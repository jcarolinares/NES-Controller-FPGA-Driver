{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "c8f2dc5e-efa0-401a-9f5f-725dbb1b3a09",
          "type": "basic.output",
          "data": {
            "name": "leds",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "37"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "38"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "39"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "41"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "42"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "43"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "44"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "45"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 832,
            "y": -24
          }
        },
        {
          "id": "f1763f8a-2460-4247-8d7e-625673b4a453",
          "type": "basic.input",
          "data": {
            "name": "data_nes",
            "pins": [
              {
                "index": "0",
                "name": "D11",
                "value": "21"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 336,
            "y": 240
          }
        },
        {
          "id": "cae4fd8b-89b5-4b98-97df-634641a01be3",
          "type": "basic.output",
          "data": {
            "name": "clk_nes",
            "pins": [
              {
                "index": "0",
                "name": "D13",
                "value": "64"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 832,
            "y": 280
          }
        },
        {
          "id": "68c89df5-b295-40a5-8a23-ac2a4f23dce0",
          "type": "basic.output",
          "data": {
            "name": "str_nes",
            "pins": [
              {
                "index": "0",
                "name": "D12",
                "value": "63"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 832,
            "y": 368
          }
        },
        {
          "id": "d63dac1b-0529-4e54-8d91-9c142028f93f",
          "type": "basic.constant",
          "data": {
            "name": "Hz",
            "value": "83_000",
            "local": false
          },
          "position": {
            "x": 352,
            "y": -8
          }
        },
        {
          "id": "111e0b54-11dd-4ff5-a23f-6b37a773dc6a",
          "type": "basic.info",
          "data": {
            "info": "# NES FPGA controller\n\n*******************************\n**    UP                     **\n**    **                     **\n** L******R          **  **  **      \n**    **    ** **    **  **  **         \n**    DW    SL ST    B   A   **\n*******************************\n\nByte Otput\n**********\nRIGHT:  7\nLEFT:   6\nDOWN:   5\nUP:     4\nSTART:  3\nSELECT: 2\nB:      1\nA:      0\n**********\n\n",
            "readonly": false
          },
          "position": {
            "x": 960,
            "y": -48
          },
          "size": {
            "width": 272,
            "height": 320
          }
        },
        {
          "id": "ebee9058-a1f1-4ac1-9e9c-e20f68a9ee6f",
          "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
          "position": {
            "x": 352,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
          "type": "39d3e5e8d44d9ea838722069d0800420ec731eb1",
          "position": {
            "x": 536,
            "y": 200
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "b97a8c6c-1def-4927-bd10-7fa55a526b16",
          "type": "3f0c8e8de5de694092aa8facf36a8590afdac018",
          "position": {
            "x": 536,
            "y": 320
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "f1763f8a-2460-4247-8d7e-625673b4a453",
            "port": "out"
          },
          "target": {
            "block": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
            "port": "e54d60f7-93e2-4aba-b9db-0db4e397144d"
          }
        },
        {
          "source": {
            "block": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
            "port": "df0599dd-d3a8-43cd-8c98-7e9f0e8efa67"
          },
          "target": {
            "block": "68c89df5-b295-40a5-8a23-ac2a4f23dce0",
            "port": "in"
          },
          "vertices": [
            {
              "x": 712,
              "y": 368
            }
          ]
        },
        {
          "source": {
            "block": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
            "port": "d146ff5d-a3fe-4ea4-95fc-cc8dd82fc4cb"
          },
          "target": {
            "block": "cae4fd8b-89b5-4b98-97df-634641a01be3",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
            "port": "437f308a-312a-4c25-a424-65dc9511c324"
          },
          "target": {
            "block": "c8f2dc5e-efa0-401a-9f5f-725dbb1b3a09",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "d63dac1b-0529-4e54-8d91-9c142028f93f",
            "port": "constant-out"
          },
          "target": {
            "block": "ebee9058-a1f1-4ac1-9e9c-e20f68a9ee6f",
            "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
          }
        },
        {
          "source": {
            "block": "ebee9058-a1f1-4ac1-9e9c-e20f68a9ee6f",
            "port": "70887b0b-826c-4150-a873-605b77da8272"
          },
          "target": {
            "block": "869f24f6-0131-4bdb-84c3-759d149dd3e4",
            "port": "129f7717-cd32-472c-b261-9a19594830b1"
          }
        }
      ]
    }
  },
  "dependencies": {
    "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
            }
          ]
        }
      }
    },
    "39d3e5e8d44d9ea838722069d0800420ec731eb1": {
      "package": {
        "name": "Nintendo NES-Controller-Block",
        "version": "1.0",
        "description": "A Nintendo NES Controller Driver",
        "author": "Julián Caro Linares-jcarolinares@gmail.com",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22612.002%22%20height=%22251.924%22%20viewBox=%22-0.004%20270.034%20612.002%20251.924%22%3E%3Cswitch%3E%3Cg%3E%3Cpath%20fill=%22#1A1A1A%22%20d=%22M15.947%20311.988H597.78v195.284H15.947z%22/%3E%3Cpath%20fill=%22gray%22%20d=%22M205.958%20305.043h153.281c5.362%200%209.709%204.347%209.709%209.709v10.594c0%205.362-4.347%209.709-9.709%209.709H205.958c-5.362%200-9.709-4.347-9.709-9.709v-10.594c.001-5.362%204.348-9.709%209.709-9.709zM205.958%20488.063h153.281c5.362%200%209.709%204.347%209.709%209.709v10.594c0%205.362-4.347%209.709-9.709%209.709H205.958c-5.362%200-9.709-4.347-9.709-9.709v-10.594c.001-5.363%204.348-9.709%209.709-9.709z%22/%3E%3Cpath%20fill=%22#DCDCDC%22%20d=%22M8.147%20270.034a8.145%208.145%200%200%200-8.152%208.152v235.621a8.144%208.144%200%200%200%208.152%208.151h595.897c4.508%200%207.953-3.644%207.953-8.151V278.186c0-4.508-3.445-8.152-7.953-8.152H8.147zm7.755%2041.954h581.986v195.25H15.902v-195.25z%22/%3E%3Cpath%20stroke=%22#FFF%22%20stroke-width=%221.652%22%20stroke-linecap=%22round%22%20d=%22M87.542%20362.004c-2.686%200-4.713%202.216-4.713%204.902v33.747H49.082c-2.686%200-4.902%202.217-4.902%204.902v27.148c0%202.686%202.216%204.901%204.902%204.901h33.747v33.747c0%202.686%202.028%204.714%204.713%204.714h27.337c2.686%200%204.713-2.027%204.713-4.714v-33.747h33.747c2.686%200%204.902-2.216%204.902-4.901v-27.148c0-2.686-2.216-4.902-4.902-4.902h-33.747v-33.747c0-2.686-2.028-4.902-4.713-4.902H87.542z%22/%3E%3Cpath%20fill=%22#1A1A1A%22%20d=%22M88.484%20366.254c-.85%200-1.506.657-1.506%201.506v36.832H50.146c-.849%200-1.506.656-1.506%201.506v25.948c0%20.85.657%201.574%201.506%201.574h36.832v36.765c0%20.849.657%201.574%201.506%201.574H114.5c.85%200%201.506-.726%201.506-1.574V433.62h36.832c.85%200%201.506-.725%201.506-1.574v-25.948c0-.85-.657-1.506-1.506-1.506h-36.832V367.76c0-.85-.656-1.506-1.506-1.506H88.484z%22/%3E%3Cpath%20fill=%22gray%22%20d=%22M205.958%20343.667h153.281c5.362%200%209.709%204.347%209.709%209.708v10.594c0%205.362-4.347%209.709-9.709%209.709H205.958c-5.362%200-9.709-4.347-9.709-9.709v-10.594c.001-5.361%204.348-9.708%209.709-9.708z%22/%3E%3Cpath%20fill=%22#DDD%22%20d=%22M400.225%20413.716h59.763a4.771%204.771%200%200%201%204.771%204.772v59.763a4.771%204.771%200%200%201-4.771%204.772h-59.763a4.771%204.771%200%200%201-4.772-4.772v-59.763a4.771%204.771%200%200%201%204.772-4.772z%22/%3E%3Cpath%20fill=%22#F00%22%20d=%22M458.507%20448.663c0%2015.688-12.718%2028.403-28.404%2028.403S401.7%20464.35%20401.7%20448.663s12.718-28.403%2028.403-28.403%2028.404%2012.714%2028.404%2028.403z%22/%3E%3Cpath%20fill=%22#DDD%22%20d=%22M478.93%20413.716h59.762a4.773%204.773%200%200%201%204.772%204.772v59.763a4.773%204.773%200%200%201-4.772%204.772H478.93a4.771%204.771%200%200%201-4.772-4.772v-59.763a4.771%204.771%200%200%201%204.772-4.772z%22/%3E%3Cpath%20fill=%22#F00%22%20d=%22M537.24%20448.663c0%2015.688-12.718%2028.403-28.403%2028.403-15.689%200-28.406-12.717-28.406-28.403s12.717-28.403%2028.406-28.403c15.685-.003%2028.403%2012.714%2028.403%2028.403z%22/%3E%3Cpath%20fill=%22gray%22%20d=%22M205.958%20382.312h153.281c5.362%200%209.709%204.347%209.709%209.709v10.594c0%205.362-4.347%209.709-9.709%209.709H205.958c-5.362%200-9.709-4.347-9.709-9.709v-10.594c0-5.362%204.348-9.709%209.709-9.709z%22/%3E%3Cpath%20fill=%22#DDD%22%20d=%22M207.071%20420.454h151.087c5.976%200%2010.82%204.845%2010.82%2010.821v35.343c0%205.977-4.845%2010.821-10.82%2010.821H207.071c-5.977%200-10.821-4.845-10.821-10.821v-35.343c-.001-5.976%204.844-10.821%2010.821-10.821z%22/%3E%3Cpath%20fill=%22none%22%20stroke=%22gray%22%20stroke-width=%221.458%22%20stroke-linecap=%22round%22%20d=%22M212.19%20425.887h140.876a8.864%208.864%200%200%201%208.864%208.864v28.951a8.863%208.863%200%200%201-8.864%208.863H212.19a8.863%208.863%200%200%201-8.864-8.863v-28.951a8.864%208.864%200%200%201%208.864-8.864z%22/%3E%3Cpath%20d=%22M225.68%20440.412h29.395c5.28%200%209.56%204.28%209.56%209.561%200%205.279-4.28%209.56-9.56%209.56H225.68a9.56%209.56%200%200%201-9.56-9.56c0-5.281%204.28-9.561%209.56-9.561zM309.676%20440.412h29.395a9.56%209.56%200%200%201%209.561%209.561c0%205.279-4.28%209.56-9.561%209.56h-29.395c-5.28%200-9.561-4.28-9.561-9.56a9.56%209.56%200%200%201%209.561-9.561z%22/%3E%3Cg%20fill=%22#FE0016%22%3E%3Cpath%20d=%22M429.575%20346.888v15.725h-5.008l-6.401-10.653c-.354-.699-.354-.014-.354-.014v10.667h-5.125v-15.725h5.125s6.106%2010.071%206.44%2010.544c.314.474.314%200%20.314%200v-10.544h5.009M432.127%20349.752h4.692v-2.865h-4.692v2.865zM461.759%20349.205v1.705h2.101l.079%201.037h-2.18v10.667h-4.89v-10.667h-2.199l.06-1.037h2.14v-1.705h4.889M452.47%20352.47c1.178.938%201.59%202.751%201.59%202.751v7.391h-4.929v-7.267s-.373-1.716-2.297-1.705c-1.904.012-2.277%201.581-2.277%201.581v7.391h-4.812v-10.666h4.812c.49.915%201.649-.183%202.65-.354%201.826-.584%203.81.001%205.263.878M432.127%20362.612h4.692v-10.667h-4.692v10.667zM473.089%20360.845s-.433%201.463-1.983%201.463c-1.552%200-1.905-1.646-1.905-1.646l.06-3.232h8.935c-.021-2.985-1.276-4.143-2.298-4.876-3.004-1.646-7.266-1.62-10.191.719-1.021.878-1.747%202.488-1.669%204.023%200%201.39.569%202.778%201.532%203.731%201.904%201.608%204.752%202.338%207.54%201.755%201.826-.585%204.163-1.463%204.673-3.511h-4.673l-.021%201.574zm-3.732-6.757s.314-1.412%201.904-1.412c1.571%200%201.768%201.549%201.768%201.549l.039%201.438h-3.711v-1.575M504.899%20346.886v5.471c-1.61-.878-4.301-1.424-5.989-.326-2.121%201.023-2.848%203.438-2.926%205.559.078%201.608%201.021%203.436%202.415%204.389%201.748%201.068%204.084%201.221%206.048.404.177-.079.373-.163.53-.259.157.122.354.218.569.295%201.395.483%203.868.194%203.868.194v-15.727h-4.515zm0%2013.822s-.491%201.039-1.886%201.051c-1.1-.012-1.846-.792-1.846-.792v-7.01s.314-.988%201.729-.974c1.414.01%202.003.974%202.003.974v6.751M492.92%20352.512c1.159.938%201.591%202.751%201.591%202.751v7.391h-4.948v-7.268s-.373-1.716-2.278-1.704c-1.924.014-2.277%201.581-2.277%201.581v7.391h-4.831v-10.667h4.831c.471.915%201.63-.183%202.631-.352%201.825-.586%203.808.001%205.281.877M518.625%20351.276c-3.967%200-7.167%202.606-7.167%205.82%200%203.212%203.2%205.818%207.167%205.818%203.946-.002%207.147-2.606%207.147-5.818%200-3.214-3.2-5.82-7.147-5.82zm1.924%209.284s-.49%201.039-1.904%201.05c-1.08-.012-1.826-.791-1.826-.791v-7.01s.295-.988%201.708-.974c1.414.012%202.022.974%202.022.974v6.751M527.859%20352.205a3.913%203.913%200%200%200%202.765-1.148%203.89%203.89%200%200%200%201.159-2.764%203.89%203.89%200%200%200-1.159-2.764%203.918%203.918%200%200%200-6.689%202.764c0%201.043.417%202.024%201.159%202.764a3.905%203.905%200%200%200%202.765%201.148zm-3.151-3.912c0-.838.328-1.625.922-2.217a3.162%203.162%200%200%201%204.458%200%203.21%203.21%200%200%201%20.892%202.217%203.13%203.13%200%200%201-3.121%203.136%203.16%203.16%200%200%201-2.229-.918%203.112%203.112%200%200%201-.922-2.218%22/%3E%3Cpath%20d=%22M527.025%20346.697h1.338c.178%200%20.327.027.444.077.18.104.299.297.299.579%200%20.262-.089.447-.237.547-.149.098-.328.152-.596.152h-1.248v-1.355zm0%203.507v-1.703h1.248c.208%200%20.388.021.476.071.18.089.269.265.297.523l.03.66c0%20.158%200%20.262.03.315%200%20.054%200%20.098.03.134h.653v-.092c-.089-.036-.118-.115-.149-.24a.914.914%200%200%201-.059-.339l-.03-.532c0-.229-.029-.397-.118-.499-.06-.104-.179-.188-.357-.25.179-.092.327-.214.417-.362.117-.155.147-.351.147-.585%200-.458-.178-.77-.564-.939-.178-.089-.445-.131-.742-.131h-1.843v3.971h.534%22/%3E%3C/g%3E%3Cg%20fill=%22#F00%22%3E%3Cpath%20d=%22M205.847%20403.028h7.825c2.236%200%203.354-1.025%203.354-3.075%200-2.049-1.118-3.074-3.354-3.074h-5.589v-1.676h8.943v-2.236h-7.825c-2.236%200-3.354%201.039-3.354%203.118%200%202.02%201.118%203.03%203.354%203.03h5.589v1.677h-8.943v2.236zM229.324%20403.028h-7.825c-2.235%200-3.354-1.118-3.354-3.354v-6.707h11.179v2.235h-8.943v1.676h8.943v2.235h-8.943v.56c0%20.745.373%201.118%201.118%201.118h7.825v2.237zM230.427%20392.954v6.707c0%202.235%201.118%203.354%203.353%203.354h7.826v-2.235h-7.826c-.745%200-1.118-.373-1.118-1.118v-6.707h-2.235zM253.903%20403.028h-7.825c-2.236%200-3.353-1.118-3.353-3.354v-6.707h11.178v2.235h-8.943v1.676h8.943v2.235h-8.943v.56c0%20.745.373%201.118%201.118%201.118h7.825v2.237zM266.204%20403.028h-7.825c-2.236%200-3.354-1.118-3.354-3.354v-3.354c0-2.235%201.118-3.353%203.354-3.353h7.825v2.235h-7.825c-.746%200-1.118.373-1.118%201.118v3.354c0%20.745.373%201.118%201.118%201.118h7.825v2.236zM267.328%20392.954h11.179v2.236h-4.472v7.825H271.8v-7.825h-4.472v-2.236z%22/%3E%3C/g%3E%3Cg%20fill=%22#F00%22%3E%3Cpath%20d=%22M298.659%20403.028h7.825c2.236%200%203.352-1.025%203.352-3.075%200-2.049-1.116-3.074-3.352-3.074h-5.59v-1.676h8.942v-2.236h-7.824c-2.236%200-3.354%201.039-3.354%203.119%200%202.02%201.118%203.029%203.354%203.029h5.589v1.677h-8.943v2.236zM310.937%20392.954h11.18v2.236h-4.472v7.825h-2.236v-7.825h-4.472v-2.236zM332.187%20397.991v-1.677c0-.746-.373-1.119-1.118-1.119h-4.471c-.746%200-1.118.373-1.118%201.119v1.677h6.707zm-6.707%202.235v2.795h-2.235v-6.707c0-2.236%201.118-3.354%203.354-3.354h4.471c2.236%200%203.354%201.118%203.354%203.354v6.707h-2.236v-2.795h-6.708zM337.765%20396.867h6.708v-1.677h-6.708v1.677zm0%202.235v3.912h-2.234v-10.06h7.824c2.236%200%203.354%201.021%203.354%203.063%200%20.969-.16%201.681-.48%202.135.32.529.48%201.219.48%202.068v2.794h-2.235v-2.794c0-.745-.373-1.118-1.118-1.118h-5.591zM347.839%20392.954h11.179v2.236h-4.472v7.825h-2.235v-7.825h-4.472v-2.236z%22/%3E%3C/g%3E%3Cpath%20fill=%22#F00%22%20d=%22M457.062%20493.145h8.023v-2.006h-8.023v2.006zm0%204.68h8.023v-2.006h-8.023v2.006zm-2.673%202.674v-12.034h9.36c2.674%200%204.011%201.212%204.011%203.637%200%20.99-.214%201.783-.642%202.381.428.588.642%201.377.642%202.366%200%202.434-1.337%203.65-4.011%203.65h-9.36zM543.818%20494.985v-2.006c0-.892-.445-1.337-1.337-1.337h-5.349c-.892%200-1.337.445-1.337%201.337v2.006h8.023zm-8.022%202.674v3.344h-2.675v-8.023c0-2.674%201.338-4.011%204.012-4.011h5.349c2.674%200%204.011%201.337%204.011%204.011v8.023h-2.674v-3.344h-8.023z%22/%3E%3Cpath%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.5%22%20d=%22M63.181%20408.339l-5.477%205.478-5.477%205.477%205.477%205.478%205.477%205.477v-3.286h10.954v-15.336H63.181v-3.288zM139.683%20408.339l5.477%205.478%205.477%205.477-5.477%205.478-5.477%205.477v-3.286h-10.954v-15.336h10.954v-3.288zM112.276%20380.669l-5.477-5.477-5.477-5.477-5.477%205.477-5.477%205.477h3.286v10.954h15.336v-10.954h3.286zM112.276%20458.333l-5.477%205.478-5.477%205.477-5.477-5.477-5.477-5.478h3.286v-10.954h15.336v10.954h3.286z%22/%3E%3Cpath%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.737%22%20d=%22M114.646%20419.111c.004%207.26-5.876%2013.148-13.136%2013.153s-13.148-5.877-13.153-13.136v-.018c-.005-7.26%205.876-13.148%2013.136-13.153%207.259-.005%2013.148%205.876%2013.153%2013.136v.018z%22/%3E%3Cpath%20fill=%22#1A1A1A%22%20d=%22M228.2%20442.274h24.391c5.28%200%209.56%203.448%209.56%207.702s-4.28%207.702-9.56%207.702H228.2c-5.28%200-9.56-3.448-9.56-7.702s4.28-7.702%209.56-7.702zM312.173%20442.274h24.392c5.279%200%209.56%203.448%209.56%207.702s-4.28%207.702-9.56%207.702h-24.392c-5.279%200-9.56-3.448-9.56-7.702s4.28-7.702%209.56-7.702z%22/%3E%3C/g%3E%3C/switch%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "437f308a-312a-4c25-a424-65dc9511c324",
              "type": "basic.output",
              "data": {
                "name": "buttons",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1000,
                "y": 360
              }
            },
            {
              "id": "129f7717-cd32-472c-b261-9a19594830b1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 144,
                "y": 400
              }
            },
            {
              "id": "d146ff5d-a3fe-4ea4-95fc-cc8dd82fc4cb",
              "type": "basic.output",
              "data": {
                "name": "clk_nes"
              },
              "position": {
                "x": 992,
                "y": 528
              }
            },
            {
              "id": "e54d60f7-93e2-4aba-b9db-0db4e397144d",
              "type": "basic.input",
              "data": {
                "name": "data_nes",
                "clock": false
              },
              "position": {
                "x": 144,
                "y": 648
              }
            },
            {
              "id": "df0599dd-d3a8-43cd-8c98-7e9f0e8efa67",
              "type": "basic.output",
              "data": {
                "name": "strb_nes"
              },
              "position": {
                "x": 992,
                "y": 696
              }
            },
            {
              "id": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
              "type": "basic.code",
              "data": {
                "code": "// NES Controller\n\n/*NOTES\nthE FPGA CLOCK IS TOO FAST ->Limit the clock speed\n\n*/\n\n/*\n1. Power up chip with 5V and ground\n2. Send strobesignal (Raise and Lower STRB) to store status of buttons into chip. The value of P8 (‘0’ if the A button was pressed, ‘1’ if not) is now present on D0. \n3. Store the value of D0 into your microcontroller or whatever you’re using.\n4. Send clocksignal (Raise and Lower CLK) to shift the register by one bit and make P7 (the B button) show up on D0.\n5. Store the value of D0 (now the value of the B button).\n6. Repeat steps 4 and 5 six more times so that you have shifted and stored the whole byte. \n\n*/\n\nreg [7:0] data_buttons = 8'b00000000;\nreg bit_data=1'b0;\nreg [2:0] pos_pointer=3'b0;\nreg _strb_nes=1;\n\nalways @(posedge clk) begin\n    bit_data<=data_nes;\n    \n    //Capture a new bit when load_data is HIGH \n    data_buttons[pos_pointer]<=bit_data;\n    pos_pointer<=pos_pointer+1;\n        if (pos_pointer==6)\n            _strb_nes<=1;\n        else\n            _strb_nes<=0;\n\nend\n\n\n//Show the data\nassign buttons=data_buttons;\nassign clk_nes=clk;\nassign strb_nes=_strb_nes;\n \n ",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "data_nes"
                    }
                  ],
                  "out": [
                    {
                      "name": "buttons",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "clk_nes"
                    },
                    {
                      "name": "strb_nes"
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 304
              },
              "size": {
                "width": 576,
                "height": 504
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e54d60f7-93e2-4aba-b9db-0db4e397144d",
                "port": "out"
              },
              "target": {
                "block": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
                "port": "data_nes"
              }
            },
            {
              "source": {
                "block": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
                "port": "buttons"
              },
              "target": {
                "block": "437f308a-312a-4c25-a424-65dc9511c324",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
                "port": "clk_nes"
              },
              "target": {
                "block": "d146ff5d-a3fe-4ea4-95fc-cc8dd82fc4cb",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
                "port": "strb_nes"
              },
              "target": {
                "block": "df0599dd-d3a8-43cd-8c98-7e9f0e8efa67",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "129f7717-cd32-472c-b261-9a19594830b1",
                "port": "out"
              },
              "target": {
                "block": "83f0d3d9-63d0-4236-b3c2-42471a6c6fbd",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "3f0c8e8de5de694092aa8facf36a8590afdac018": {
      "package": {
        "name": "nes_pinout",
        "version": "1.0",
        "description": "Connection pinout Sticker",
        "author": "Julián Caro Linares",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22187%22%20height=%22128%22%20viewBox=%220%200%20187%20128%22%3E%3Cimage%20width=%22187%22%20height=%22128%22%20preserveAspectRatio=%22none%22%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALsAAACACAIAAADcT49TAAAQJElEQVR42u1drZqruhpOzz6mMiNH%20UjmSkSPpJYBckl5CkFuC3BIuodjtwG4HlzCxy4Hdrke8z+TJ4a9JSsvvK9Yz7SoBwkvy/X+H2+1G%20duxQxn+mvoAdC8POmB162BmzQw87Y3bo4b9TX8DTwTknhFBK67p+/A/Lsqa+oYmxcsZEUVSW5biP%20OQzDqW9rSqycMYSQMAxHZExd10EQbJk065djsJuMBUqp7/tBEEx9W5Nh/YwZHVixxiXigrAzxgRh%20GEZRBJl6a9gZY4gwDNM03SBpdsaYw/f9DZJmZ4w5KKWMsa2RZv2MoZQ+dXzf95Mk2Y4gvH7GPPtZ%20Ukpt287zfOobfRHWb8EbRp7nSZKIj5TSOI51B3FdN03TNE1d1536hp6O7TImTVM4EK7Xq/iyrmvP%208xzHsW3btm310bZDmvXvSp2IoogQwhjzfV/+nlJ6vV6xy+jKs+BKmqZT39xzsUXGRFHkOI7run1C%20sW3bUILKstQaeQuk0WNM/YPGN/JH8QfnvPG/k6BBiyRJsOncPdD3/X2laUODMXmev/3A8zxCSF3X%20+Cg0hc/PzyiK8MvT6fT29oZvJrxDmbJlWdZ1rSigwNxi4HR0HEd3cVoQVBlTlqXnea7rFkURx3Ga%20poIHlNLGK4XXOsuyoigw6dOSRiBJkobgchcQabUOgX87iqLJ19en4KYGTLT4eL1er9drVVWEEOga%20RVHcbjfLssIwLIqCEFJVFX7suq5lWd/f34rnGhG4GPydZVkcx7ojVFXFGDM49ff3t9mBM4fqGpOm%20qQgjKstSVj4tyxoOGYnjmHM+rik9TdMgCMqyhLSkckie5waqL+I1DVYLy7LMNrWZQ8Mek+c5Y4wQ%208vn5SQhxXRfGrrquGWPn87nP7onvxaSXZTmKYMg5x5VAknVd966AUtf1s50GMkT41Zpi9lQZE8ex%2053lYXYqiuFwuYuoppZZl2bbdyYO6rqGeiPcba1Ij6FrrI4YViozv+7Zt94VmvpIibWCluVwuBqbk%20eUKVMXiPYQ/lnIM6+C88wjAMT6eTfAgWZM55nudZlonvKaV4ijLndD/CXAuBaRiTi594ozjn68hD%20UJVjKKVFUeDOHcdhjOH+HcfBH5ZlxXEsPoJYnHPbtquqchxn3OvGNqR1CC5e90SjbGSMsSRJVhIU%20MbXo/VzIutLtdnNdV3cEWBNGuRjG2CQK47jYlpcA77rWIVEU6Zpw+oBAz6Ub97bFGGxM6pLN6L5o%20xpiB52FWWD9jZCmEUqqeBgDVb/TohaUbadbPmPaKgr1peKVJkoRS+qRgFwR6Tj0xhlg/Y9rASgNv%20V9vqmCTJ5XKxLGt0/U4AGuVCSXO4rbqqGUJh+mzBsBU1SAN74Avsfnme13W9uJi97UZtkh/r81iq%20kMHZkyRZHGO2uCvteATrX2OG9xfOuewOg8NL9xRlWcpbm9kgS8H6GdOpE8GRmaapZVliX6CUBkFQ%2017WiKFPXdZqmeZ7bti2LyRgEjpThQZZIrPUzpg3OeZIktm3LeScAPMxJkiC0Y+CJImbDcZy+QRCD%20NxznMLmX1ARTuymei4Zf6aYTU8cYE2GEDXx/f4dheHcEnGtgkCUG6W1L8uWcR1GkGN/EGOuM1cXq%20guCyYYiA36nve1Ro8asoiizLsiwT7438t3h15Ncah0z1Qjzou66qyvf9xpcGDvD2IDflheoZ+P7+%20Rtw+Hl9RFPJDbHxsQIMxchSZ4zi32w2R4Y1lnzFm27Z8SOd8vQZhGIoAA0Sz644Qx7HM+MZH9cto%20zNLtdkOixSTTIhuBIIfJN4W4wb5jNbJPLpcLBsqyDB/xX33iG8ztjLFpAxbl+GIDw79t27LbMs9z%20g0E6g7lELOLrQSl1HKeqqqqqEK+NBDRCCHwXAxu3KmPgbsVAjuNkWSZMpZ23nabp5XLxfX8mQdGi%20DrTugXKAhByrqgXbtjvDYl6mKwVBICxG8I2UZRkEQXtC7l6SqnZdlqW8VGDi+kZHOhwWt9HvXJxd%20y75uHHwpYtExiFmsrmLAKKxEmEDOOfb3UeYtTVOsK4QQzjlq3iC8Cy8/3nA4aIejpzXsMeoJhYj5%209TzP87z26RslW3QBfYcQ4jgOSjGMMqcqeOqSkCQJ7IGEEKRGGCtZchWcIAgQcA1+wDh5vV4tyyrL%208vPzU96sRcLGwOCqjLler8hIQsj3+Xy2bVvkK7Wv2HGcoijO5/PpdMqyTH41HccxDiSAq9m27bqu%204zheos20MVHib9/3HcfBTmFZFsItxrpBeRz4zMXLj8d3vV7f3t6SJBEx/31QZQwM4Z7n4WnJ1kx5%20O5TfeMuysiw7nU6dK43xnfu+r7U1NJJXHjz7iAGX7VRLUf4IFQVGOQse0+l0cl0XQkIURUEQYMkR%20by8mNk3Tu9vIH3/++afKiY/H469fv+q6Ph6P7+/vf/3118fHx/F4/P379/v7O/2B4zjH45FS+vX1%20hev49esX5/z379+jbMk4l/rv//nnn/f3dxz1999/33X0tAGJFbeDncIgPiFN06+vrwbR//33X845%20Rm7fpmVZx+Px8RkT5xJJgF9fXx8fH3Vdf3x8XK9XcZb39/fj8Xj37vT8Sm3Fp605NzYdyDRj3fnr%200XjXzdaqPrn7ZbpSQwVxXbfNDMVCbhvyEkAR0D2qIe/HcXw+n3UHMbPizBMbYgzRD8mOoqhtIEDt%20KvVBgiBY9CrbwLYYoxWS3Rcj7LouImMUBxkouLdEXW/9jGk8FZBmuDQ8AmgGQspFsbsBQYRzHgTB%20QI2SORQJNMD6I6raT8VxHGFFbGT8I58eJtFhMRDVzoQtURZTRIzEsCFgQr/SI1g/YzqBZ4yyJsIJ%20R37MaIr2HmgccNPIg0CjVBlkX2MWBphWH8z/mDaF5fVYvxyzY1zsjJkSS5Rj1s+Y2T6VhepK62fM%20bJ/KristElCXxEezAIPGIOqi9GzZPID1rzF9gF4Nq4xgSRAEnuephzRAr24YkS+Xy/l8XiIbVNC9%20xshWcOiNbfsmAmXkyRVWL/nHTy3EYgaYdDvj97A8wGE5nBOJUMDOxEoMgiI0o8etTo++7ASxyyI9%20B5ElIjoJATgiGEcAeS4wXokvDXI+xkJn2sdAnqLAcOrkcLKjwHDW44T5So+ggzEwWSKBBZWbRXlS%20fBS/RGFfcf+EECQHIc4U3+OFm+r25Hylm2biah9ptAYZ+PGE+UqPoEOOwcKAPhGoyy1EufbejKjj%20uq4boSeiI1dZliNqBAYaqfz7zuiFPqC/kkjLMhtkoM3HenQlCC5JkqBPRBzHwifXvkO008TfYRiK%20/SgIAjFNI4b7o+IhLkO3TAtCyrUOQZC2nKaEeg5ag2BOOqvML1E67mBMXddoPIEmFGhagWWmfYeI%20N6aUXi4XxIJYloXqKRCGzufz5XKRFc7Hs0+gyuZ5rpV9Inq3aAHJaTJjDF4ADLKOvgQdjEmSBGlO%20yB+Q6xu03y0EBhBC4jgWnSxENxRMViP46JHsE0QjgH9aj9/4bZa7nxt3o+hrDLNEdDCGMYbcJ6wW%20chTx3Xm/XC5ZlkGsQexIXdcj7kq4EjMjm5ncIDpyUUqNs2ixtXUOPtbM3EUURWJp930fuwFmBpHL%20juOoRJd222Mgu2Cy5FfZtm05nUCOGEKRXHzEbzDL49ZRNnvkY519XLzYrySCvCilSZIkSYI3+Xw+%20I+QDcudd0nQzBmpC+/uGSUqmgnzIrIJFRnwqcg72KKO9mM3iGfm+fzgc0HUBRkgk76Vpepcx2/US%20GGD0JWG4kMpTG16geJZt21mWcc7h61ARDbfiiYTsaVDhATqOMH+jhbPu2VV6qOAVh57BGEPTbNi0%20DJaiu7qFLMKL/VHlRFthDGA2+6/ZO+ofkJ+1p/2vyqUq3mMQBL7vl2WZJAma73mehy/vHDm10fm5%20eLyHW/uQUQa5DfqV4jhGM/oRpwJFG1DaDUbIoiiKooB9BFKwyq2tnzGyX+l6vWpVseusehfHsdaz%207PSG3l7uV5JlFMaYuCRRdgO1De9i/YxpPK04jhV96QNFEvtIoPXLhfquN6crYZ9G1Z2BnyVJMhDZ%20g+Z9dzs+DvfqIavxK60eruuijrwoBSX+C/pUWZau6w6rG6gPjc4GjQRKMQhKiE19uyNji4whhPi+%20j4cKU4T4Hhatgdx6GYwxDJLnuVyzDnbVWZkxR8RGGUN+ivWRxyzUGGRuYalPxfrlmNn6lRaK9TNm%20ztLlEtm8fsbMGXNmcx92xuzQw3YlX6CRcmVQvlUeBD6d9WnUMrbLGKSoIcBU7jyA4taKvIEnT2Rm%20gTGifcgSxZS7WD9jOtt7gCuIFZR/AOoEQXA3nRGRqQhKbJxCDGLb9nysMsgTwt/tnApUKVfKtZja%20TfFc9OVEyu7JThRFMez0UcmJHB7kxX6ldvStfJ0gioqzbFuSLxaGu80ayE9Fxc7uIyiiqbLpiGSM%20vot5sa4keushqlekN3x+fqpXHN4WY6IoUs+Lg8upnc6o3jWI/JCmMz9rwpxIpJiByojdHG6YJcOc%20MUmSHH6ARjr4vizLt7e3w+FwOp1mZW9APq9WwhHmUVamzAbp62Uy4fxcr1dcFfqdqHeIMWcMRkeM%20kmVZ5/MZKa6e51FKkbWEPNyZQKUVTBuu68o15bWSrgVQQXjqCfg/YO1EzEaapnDHqvRtMNeVoEki%204BlhzIgf4JxXVYX8VoOmD6MDzDZ+m+WeSsY5kZZlzYoxZVmWZYlObniLMD8qd2fOmMYKxhgTcfZy%20cLJxg8ZOQO/VyozEXBjnRMJa82BOpG3bnfJvX2PPJEnKshyxTyQg0h8553C5y/0BD4eDyhr80BrT%2091GeiPakgOB4Brr/UkrRA5MQApXnlQaPcTPcGrpSnudpmkJGRjwXtgyziWpPi+M4IsUkDMMGF9EH%208KXZJ6KwAyGEc46aZ6RrjXmkxAHs8XjvXx+VMq6g2ljz0FgbX8JZYeay6MNwHI+82AzjIcbAeEp+%20wmbx0luW5Xkeyux0llp5xPMCXmq1K5qzqb6xMItq9aJv7BwLiBjbELMsQ+tBGNSFFbWqKjSDcF33%20rlX02ZBtvipW2jZky2xVVb7vm81VO4FBqzrafGC+xqA/cft7qNZTvwjdMBDDsVOIWzPbmGZll3oQ%20G7L5Ivpf96hGynQcx+3KeLqDLBobYgzkp7tJRjLQEbSh+sHmpD6ImeVwttgQY8hPU1BF0uR5Liqo%20yWCMobiayiDw9vUpKXOWyvuwLcYQ5XRG0KVvbQjDUIU0CLbq248W2vtk/RFVbYh0Ruw4sqovnHOO%204wxvJWEYotYLHL+yGgyHAFzcwyaQJa4x62dM51NBOiPSXSEOQw/Cs1cMuGSMoVSsvN4ICqrUi9zX%20mDmi76mMkug6SqfJZWFzcsyOB7EzZkosUY7ZGTMZFqor7YyZDAvVldbPmDk/lX2NmSOW+FTmjPUz%20Zse42BkzJea8Y/Zh5RY8kcc1Q6AT0dRXoY3D7Xab+hp2LAn7rrRDDztjduhhZ8wOPeyM2aGHnTE7%209LAzZoce/gdMjyXSrrmsvwAAABJ0RVh0RVhJRjpPcmllbnRhdGlvbgAxhFjs7wAAAABJRU5ErkJg%20gg==%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [],
          "wires": []
        }
      }
    }
  }
}