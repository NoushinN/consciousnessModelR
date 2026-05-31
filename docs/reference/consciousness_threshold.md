# Apply a simplified awareness threshold model

`consciousness_threshold()` evaluates whether activation values cross a
threshold for awareness-like processing.

## Usage

``` r
consciousness_threshold(data, activation_col = "activation", threshold = 0.7)
```

## Arguments

- data:

  A data frame containing activation values.

- activation_col:

  Name of the activation column.

- threshold:

  Numeric threshold value.

## Value

The input data frame with threshold columns added.

## Examples

``` r
sim <- simulate_global_workspace(seed = 1)
consciousness_threshold(sim, activation_col = "activation", threshold = 0.7)
#>     step process activation winner is_winner broadcast ignited threshold
#> 1      1      P1  0.5175416     P7     FALSE         0    TRUE       0.7
#> 2      1      P2  0.4026213     P7     FALSE         0    TRUE       0.7
#> 3      1      P3  0.7278461     P7     FALSE         0    TRUE       0.7
#> 4      1      P4  0.8121581     P7     FALSE         0    TRUE       0.7
#> 5      1      P5  0.3688088     P7     FALSE         0    TRUE       0.7
#> 6      1      P6  0.5790204     P7     FALSE         0    TRUE       0.7
#> 7      1      P7  1.0000000     P7      TRUE         1    TRUE       0.7
#> 8      1      P8  0.6716172     P7     FALSE         0    TRUE       0.7
#> 9      2      P1  0.7717194     P3     FALSE         0    TRUE       0.7
#> 10     2      P2  0.8397550     P3     FALSE         0    TRUE       0.7
#> 11     2      P3  1.0000000     P3      TRUE         1    TRUE       0.7
#> 12     2      P4  1.0000000     P3     FALSE         0    TRUE       0.7
#> 13     2      P5  0.7079539     P3     FALSE         0    TRUE       0.7
#> 14     2      P6  1.0000000     P3     FALSE         0    TRUE       0.7
#> 15     2      P7  1.0000000     P3     FALSE         0    TRUE       0.7
#> 16     2      P8  0.9348373     P3     FALSE         0    TRUE       0.7
#> 17     3      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 18     3      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 19     3      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 20     3      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 21     3      P5  0.8395573     P1     FALSE         0    TRUE       0.7
#> 22     3      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 23     3      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 24     3      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 25     4      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 26     4      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 27     4      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 28     4      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 29     4      P5  0.9532260     P1     FALSE         0    TRUE       0.7
#> 30     4      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 31     4      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 32     4      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 33     5      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 34     5      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 35     5      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 36     5      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 37     5      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 38     5      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 39     5      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 40     5      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 41     6      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 42     6      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 43     6      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 44     6      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 45     6      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 46     6      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 47     6      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 48     6      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 49     7      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 50     7      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 51     7      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 52     7      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 53     7      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 54     7      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 55     7      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 56     7      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 57     8      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 58     8      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 59     8      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 60     8      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 61     8      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 62     8      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 63     8      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 64     8      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 65     9      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 66     9      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 67     9      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 68     9      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 69     9      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 70     9      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 71     9      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 72     9      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 73    10      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 74    10      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 75    10      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 76    10      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 77    10      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 78    10      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 79    10      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 80    10      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 81    11      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 82    11      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 83    11      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 84    11      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 85    11      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 86    11      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 87    11      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 88    11      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 89    12      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 90    12      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 91    12      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 92    12      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 93    12      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 94    12      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 95    12      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 96    12      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 97    13      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 98    13      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 99    13      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 100   13      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 101   13      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 102   13      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 103   13      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 104   13      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 105   14      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 106   14      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 107   14      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 108   14      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 109   14      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 110   14      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 111   14      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 112   14      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 113   15      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 114   15      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 115   15      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 116   15      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 117   15      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 118   15      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 119   15      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 120   15      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 121   16      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 122   16      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 123   16      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 124   16      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 125   16      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 126   16      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 127   16      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 128   16      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 129   17      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 130   17      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 131   17      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 132   17      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 133   17      P5  0.9295732     P1     FALSE         0    TRUE       0.7
#> 134   17      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 135   17      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 136   17      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 137   18      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 138   18      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 139   18      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 140   18      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 141   18      P5  0.9360377     P1     FALSE         0    TRUE       0.7
#> 142   18      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 143   18      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 144   18      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 145   19      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 146   19      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 147   19      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 148   19      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 149   19      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 150   19      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 151   19      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 152   19      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 153   20      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 154   20      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 155   20      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 156   20      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 157   20      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 158   20      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 159   20      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 160   20      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 161   21      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 162   21      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 163   21      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 164   21      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 165   21      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 166   21      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 167   21      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 168   21      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 169   22      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 170   22      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 171   22      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 172   22      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 173   22      P5  0.9978768     P1     FALSE         0    TRUE       0.7
#> 174   22      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 175   22      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 176   22      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 177   23      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 178   23      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 179   23      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 180   23      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 181   23      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 182   23      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 183   23      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 184   23      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 185   24      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 186   24      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 187   24      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 188   24      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 189   24      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 190   24      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 191   24      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 192   24      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 193   25      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 194   25      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 195   25      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 196   25      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 197   25      P5  0.8924856     P1     FALSE         0    TRUE       0.7
#> 198   25      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 199   25      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 200   25      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 201   26      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 202   26      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 203   26      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 204   26      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 205   26      P5  0.9949730     P1     FALSE         0    TRUE       0.7
#> 206   26      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 207   26      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 208   26      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 209   27      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 210   27      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 211   27      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 212   27      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 213   27      P5  0.9436657     P1     FALSE         0    TRUE       0.7
#> 214   27      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 215   27      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 216   27      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 217   28      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 218   28      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 219   28      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 220   28      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 221   28      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 222   28      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 223   28      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 224   28      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 225   29      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 226   29      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 227   29      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 228   29      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 229   29      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 230   29      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 231   29      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 232   29      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 233   30      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 234   30      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 235   30      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 236   30      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 237   30      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 238   30      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 239   30      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 240   30      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 241   31      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 242   31      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 243   31      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 244   31      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 245   31      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 246   31      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 247   31      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 248   31      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 249   32      P1  0.9189956     P2     FALSE         0    TRUE       0.7
#> 250   32      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 251   32      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 252   32      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 253   32      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 254   32      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 255   32      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 256   32      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 257   33      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 258   33      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 259   33      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 260   33      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 261   33      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 262   33      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 263   33      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 264   33      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 265   34      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 266   34      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 267   34      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 268   34      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 269   34      P5  0.8920968     P1     FALSE         0    TRUE       0.7
#> 270   34      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 271   34      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 272   34      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 273   35      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 274   35      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 275   35      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 276   35      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 277   35      P5  0.9766251     P1     FALSE         0    TRUE       0.7
#> 278   35      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 279   35      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 280   35      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 281   36      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 282   36      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 283   36      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 284   36      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 285   36      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 286   36      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 287   36      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 288   36      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 289   37      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 290   37      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 291   37      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 292   37      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 293   37      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 294   37      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 295   37      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 296   37      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 297   38      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 298   38      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 299   38      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 300   38      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 301   38      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 302   38      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 303   38      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 304   38      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 305   39      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 306   39      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 307   39      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 308   39      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 309   39      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 310   39      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 311   39      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 312   39      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 313   40      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 314   40      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 315   40      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 316   40      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 317   40      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 318   40      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 319   40      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 320   40      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 321   41      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 322   41      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 323   41      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 324   41      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 325   41      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 326   41      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 327   41      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 328   41      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 329   42      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 330   42      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 331   42      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 332   42      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 333   42      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 334   42      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 335   42      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 336   42      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 337   43      P1  0.9328163     P2     FALSE         0    TRUE       0.7
#> 338   43      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 339   43      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 340   43      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 341   43      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 342   43      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 343   43      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 344   43      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 345   44      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 346   44      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 347   44      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 348   44      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 349   44      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 350   44      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 351   44      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 352   44      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 353   45      P1  0.9000724     P2     FALSE         0    TRUE       0.7
#> 354   45      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 355   45      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 356   45      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 357   45      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 358   45      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 359   45      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 360   45      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 361   46      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 362   46      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 363   46      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 364   46      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 365   46      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 366   46      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 367   46      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 368   46      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 369   47      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 370   47      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 371   47      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 372   47      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 373   47      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 374   47      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 375   47      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 376   47      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 377   48      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 378   48      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 379   48      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 380   48      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 381   48      P5  0.9305136     P1     FALSE         0    TRUE       0.7
#> 382   48      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 383   48      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 384   48      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 385   49      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 386   49      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 387   49      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 388   49      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 389   49      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 390   49      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 391   49      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 392   49      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 393   50      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 394   50      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 395   50      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 396   50      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 397   50      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 398   50      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 399   50      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 400   50      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 401   51      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 402   51      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 403   51      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 404   51      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 405   51      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 406   51      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 407   51      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 408   51      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 409   52      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 410   52      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 411   52      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 412   52      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 413   52      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 414   52      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 415   52      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 416   52      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 417   53      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 418   53      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 419   53      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 420   53      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 421   53      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 422   53      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 423   53      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 424   53      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 425   54      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 426   54      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 427   54      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 428   54      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 429   54      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 430   54      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 431   54      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 432   54      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 433   55      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 434   55      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 435   55      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 436   55      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 437   55      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 438   55      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 439   55      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 440   55      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 441   56      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 442   56      P2  0.9890020     P1     FALSE         0    TRUE       0.7
#> 443   56      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 444   56      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 445   56      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 446   56      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 447   56      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 448   56      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 449   57      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 450   57      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 451   57      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 452   57      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 453   57      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 454   57      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 455   57      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 456   57      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 457   58      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 458   58      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 459   58      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 460   58      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 461   58      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 462   58      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 463   58      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 464   58      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 465   59      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 466   59      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 467   59      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 468   59      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 469   59      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 470   59      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 471   59      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 472   59      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 473   60      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 474   60      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 475   60      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 476   60      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 477   60      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 478   60      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 479   60      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 480   60      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 481   61      P1  0.9620117     P2     FALSE         0    TRUE       0.7
#> 482   61      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 483   61      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 484   61      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 485   61      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 486   61      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 487   61      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 488   61      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 489   62      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 490   62      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 491   62      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 492   62      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 493   62      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 494   62      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 495   62      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 496   62      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 497   63      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 498   63      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 499   63      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 500   63      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 501   63      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 502   63      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 503   63      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 504   63      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 505   64      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 506   64      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 507   64      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 508   64      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 509   64      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 510   64      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 511   64      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 512   64      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 513   65      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 514   65      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 515   65      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 516   65      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 517   65      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 518   65      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 519   65      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 520   65      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 521   66      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 522   66      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 523   66      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 524   66      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 525   66      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 526   66      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 527   66      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 528   66      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 529   67      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 530   67      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 531   67      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 532   67      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 533   67      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 534   67      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 535   67      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 536   67      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 537   68      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 538   68      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 539   68      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 540   68      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 541   68      P5  0.9008309     P1     FALSE         0    TRUE       0.7
#> 542   68      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 543   68      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 544   68      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 545   69      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 546   69      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 547   69      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 548   69      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 549   69      P5  0.8085027     P1     FALSE         0    TRUE       0.7
#> 550   69      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 551   69      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 552   69      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 553   70      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 554   70      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 555   70      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 556   70      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 557   70      P5  0.9071385     P1     FALSE         0    TRUE       0.7
#> 558   70      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 559   70      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 560   70      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 561   71      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 562   71      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 563   71      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 564   71      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 565   71      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 566   71      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 567   71      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 568   71      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 569   72      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 570   72      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 571   72      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 572   72      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 573   72      P5  0.9833572     P1     FALSE         0    TRUE       0.7
#> 574   72      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 575   72      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 576   72      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 577   73      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 578   73      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 579   73      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 580   73      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 581   73      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 582   73      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 583   73      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 584   73      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 585   74      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 586   74      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 587   74      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 588   74      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 589   74      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 590   74      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 591   74      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 592   74      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 593   75      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 594   75      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 595   75      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 596   75      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 597   75      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 598   75      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 599   75      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 600   75      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 601   76      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 602   76      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 603   76      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 604   76      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 605   76      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 606   76      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 607   76      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 608   76      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 609   77      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 610   77      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 611   77      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 612   77      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 613   77      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 614   77      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 615   77      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 616   77      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 617   78      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 618   78      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 619   78      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 620   78      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 621   78      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 622   78      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 623   78      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 624   78      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 625   79      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 626   79      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 627   79      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 628   79      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 629   79      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 630   79      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 631   79      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 632   79      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 633   80      P1  0.9160412     P2     FALSE         0    TRUE       0.7
#> 634   80      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 635   80      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 636   80      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 637   80      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 638   80      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 639   80      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 640   80      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 641   81      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 642   81      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 643   81      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 644   81      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 645   81      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 646   81      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 647   81      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 648   81      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 649   82      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 650   82      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 651   82      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 652   82      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 653   82      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 654   82      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 655   82      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 656   82      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 657   83      P1  0.9821521     P2     FALSE         0    TRUE       0.7
#> 658   83      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 659   83      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 660   83      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 661   83      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 662   83      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 663   83      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 664   83      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 665   84      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 666   84      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 667   84      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 668   84      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 669   84      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 670   84      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 671   84      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 672   84      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 673   85      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 674   85      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 675   85      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 676   85      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 677   85      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 678   85      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 679   85      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 680   85      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 681   86      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 682   86      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 683   86      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 684   86      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 685   86      P5  0.9242896     P1     FALSE         0    TRUE       0.7
#> 686   86      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 687   86      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 688   86      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 689   87      P1  0.9150741     P2     FALSE         0    TRUE       0.7
#> 690   87      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 691   87      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 692   87      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 693   87      P5  0.9896840     P2     FALSE         0    TRUE       0.7
#> 694   87      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 695   87      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 696   87      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 697   88      P1  0.9790188     P2     FALSE         0    TRUE       0.7
#> 698   88      P2  1.0000000     P2      TRUE         1    TRUE       0.7
#> 699   88      P3  1.0000000     P2     FALSE         0    TRUE       0.7
#> 700   88      P4  1.0000000     P2     FALSE         0    TRUE       0.7
#> 701   88      P5  1.0000000     P2     FALSE         0    TRUE       0.7
#> 702   88      P6  1.0000000     P2     FALSE         0    TRUE       0.7
#> 703   88      P7  1.0000000     P2     FALSE         0    TRUE       0.7
#> 704   88      P8  1.0000000     P2     FALSE         0    TRUE       0.7
#> 705   89      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 706   89      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 707   89      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 708   89      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 709   89      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 710   89      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 711   89      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 712   89      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 713   90      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 714   90      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 715   90      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 716   90      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 717   90      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 718   90      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 719   90      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 720   90      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 721   91      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 722   91      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 723   91      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 724   91      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 725   91      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 726   91      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 727   91      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 728   91      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 729   92      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 730   92      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 731   92      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 732   92      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 733   92      P5  0.8964939     P1     FALSE         0    TRUE       0.7
#> 734   92      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 735   92      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 736   92      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 737   93      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 738   93      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 739   93      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 740   93      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 741   93      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 742   93      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 743   93      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 744   93      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 745   94      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 746   94      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 747   94      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 748   94      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 749   94      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 750   94      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 751   94      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 752   94      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 753   95      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 754   95      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 755   95      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 756   95      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 757   95      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 758   95      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 759   95      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 760   95      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 761   96      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 762   96      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 763   96      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 764   96      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 765   96      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 766   96      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 767   96      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 768   96      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 769   97      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 770   97      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 771   97      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 772   97      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 773   97      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 774   97      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 775   97      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 776   97      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 777   98      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 778   98      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 779   98      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 780   98      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 781   98      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 782   98      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 783   98      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 784   98      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 785   99      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 786   99      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 787   99      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 788   99      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 789   99      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 790   99      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 791   99      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 792   99      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#> 793  100      P1  1.0000000     P1      TRUE         1    TRUE       0.7
#> 794  100      P2  1.0000000     P1     FALSE         0    TRUE       0.7
#> 795  100      P3  1.0000000     P1     FALSE         0    TRUE       0.7
#> 796  100      P4  1.0000000     P1     FALSE         0    TRUE       0.7
#> 797  100      P5  1.0000000     P1     FALSE         0    TRUE       0.7
#> 798  100      P6  1.0000000     P1     FALSE         0    TRUE       0.7
#> 799  100      P7  1.0000000     P1     FALSE         0    TRUE       0.7
#> 800  100      P8  1.0000000     P1     FALSE         0    TRUE       0.7
#>     above_threshold threshold_distance
#> 1             FALSE       -0.182458420
#> 2             FALSE       -0.297378696
#> 3              TRUE        0.027846067
#> 4              TRUE        0.112158078
#> 5             FALSE       -0.331191244
#> 6             FALSE       -0.120979583
#> 7              TRUE        0.300000000
#> 8             FALSE       -0.028382807
#> 9              TRUE        0.071719436
#> 10             TRUE        0.139755004
#> 11             TRUE        0.300000000
#> 12             TRUE        0.300000000
#> 13             TRUE        0.007953901
#> 14             TRUE        0.300000000
#> 15             TRUE        0.300000000
#> 16             TRUE        0.234837261
#> 17             TRUE        0.300000000
#> 18             TRUE        0.300000000
#> 19             TRUE        0.300000000
#> 20             TRUE        0.300000000
#> 21             TRUE        0.139557274
#> 22             TRUE        0.300000000
#> 23             TRUE        0.300000000
#> 24             TRUE        0.300000000
#> 25             TRUE        0.300000000
#> 26             TRUE        0.300000000
#> 27             TRUE        0.300000000
#> 28             TRUE        0.300000000
#> 29             TRUE        0.253225982
#> 30             TRUE        0.300000000
#> 31             TRUE        0.300000000
#> 32             TRUE        0.300000000
#> 33             TRUE        0.300000000
#> 34             TRUE        0.300000000
#> 35             TRUE        0.300000000
#> 36             TRUE        0.300000000
#> 37             TRUE        0.300000000
#> 38             TRUE        0.300000000
#> 39             TRUE        0.300000000
#> 40             TRUE        0.300000000
#> 41             TRUE        0.300000000
#> 42             TRUE        0.300000000
#> 43             TRUE        0.300000000
#> 44             TRUE        0.300000000
#> 45             TRUE        0.300000000
#> 46             TRUE        0.300000000
#> 47             TRUE        0.300000000
#> 48             TRUE        0.300000000
#> 49             TRUE        0.300000000
#> 50             TRUE        0.300000000
#> 51             TRUE        0.300000000
#> 52             TRUE        0.300000000
#> 53             TRUE        0.300000000
#> 54             TRUE        0.300000000
#> 55             TRUE        0.300000000
#> 56             TRUE        0.300000000
#> 57             TRUE        0.300000000
#> 58             TRUE        0.300000000
#> 59             TRUE        0.300000000
#> 60             TRUE        0.300000000
#> 61             TRUE        0.300000000
#> 62             TRUE        0.300000000
#> 63             TRUE        0.300000000
#> 64             TRUE        0.300000000
#> 65             TRUE        0.300000000
#> 66             TRUE        0.300000000
#> 67             TRUE        0.300000000
#> 68             TRUE        0.300000000
#> 69             TRUE        0.300000000
#> 70             TRUE        0.300000000
#> 71             TRUE        0.300000000
#> 72             TRUE        0.300000000
#> 73             TRUE        0.300000000
#> 74             TRUE        0.300000000
#> 75             TRUE        0.300000000
#> 76             TRUE        0.300000000
#> 77             TRUE        0.300000000
#> 78             TRUE        0.300000000
#> 79             TRUE        0.300000000
#> 80             TRUE        0.300000000
#> 81             TRUE        0.300000000
#> 82             TRUE        0.300000000
#> 83             TRUE        0.300000000
#> 84             TRUE        0.300000000
#> 85             TRUE        0.300000000
#> 86             TRUE        0.300000000
#> 87             TRUE        0.300000000
#> 88             TRUE        0.300000000
#> 89             TRUE        0.300000000
#> 90             TRUE        0.300000000
#> 91             TRUE        0.300000000
#> 92             TRUE        0.300000000
#> 93             TRUE        0.300000000
#> 94             TRUE        0.300000000
#> 95             TRUE        0.300000000
#> 96             TRUE        0.300000000
#> 97             TRUE        0.300000000
#> 98             TRUE        0.300000000
#> 99             TRUE        0.300000000
#> 100            TRUE        0.300000000
#> 101            TRUE        0.300000000
#> 102            TRUE        0.300000000
#> 103            TRUE        0.300000000
#> 104            TRUE        0.300000000
#> 105            TRUE        0.300000000
#> 106            TRUE        0.300000000
#> 107            TRUE        0.300000000
#> 108            TRUE        0.300000000
#> 109            TRUE        0.300000000
#> 110            TRUE        0.300000000
#> 111            TRUE        0.300000000
#> 112            TRUE        0.300000000
#> 113            TRUE        0.300000000
#> 114            TRUE        0.300000000
#> 115            TRUE        0.300000000
#> 116            TRUE        0.300000000
#> 117            TRUE        0.300000000
#> 118            TRUE        0.300000000
#> 119            TRUE        0.300000000
#> 120            TRUE        0.300000000
#> 121            TRUE        0.300000000
#> 122            TRUE        0.300000000
#> 123            TRUE        0.300000000
#> 124            TRUE        0.300000000
#> 125            TRUE        0.300000000
#> 126            TRUE        0.300000000
#> 127            TRUE        0.300000000
#> 128            TRUE        0.300000000
#> 129            TRUE        0.300000000
#> 130            TRUE        0.300000000
#> 131            TRUE        0.300000000
#> 132            TRUE        0.300000000
#> 133            TRUE        0.229573216
#> 134            TRUE        0.300000000
#> 135            TRUE        0.300000000
#> 136            TRUE        0.300000000
#> 137            TRUE        0.300000000
#> 138            TRUE        0.300000000
#> 139            TRUE        0.300000000
#> 140            TRUE        0.300000000
#> 141            TRUE        0.236037678
#> 142            TRUE        0.300000000
#> 143            TRUE        0.300000000
#> 144            TRUE        0.300000000
#> 145            TRUE        0.300000000
#> 146            TRUE        0.300000000
#> 147            TRUE        0.300000000
#> 148            TRUE        0.300000000
#> 149            TRUE        0.300000000
#> 150            TRUE        0.300000000
#> 151            TRUE        0.300000000
#> 152            TRUE        0.300000000
#> 153            TRUE        0.300000000
#> 154            TRUE        0.300000000
#> 155            TRUE        0.300000000
#> 156            TRUE        0.300000000
#> 157            TRUE        0.300000000
#> 158            TRUE        0.300000000
#> 159            TRUE        0.300000000
#> 160            TRUE        0.300000000
#> 161            TRUE        0.300000000
#> 162            TRUE        0.300000000
#> 163            TRUE        0.300000000
#> 164            TRUE        0.300000000
#> 165            TRUE        0.300000000
#> 166            TRUE        0.300000000
#> 167            TRUE        0.300000000
#> 168            TRUE        0.300000000
#> 169            TRUE        0.300000000
#> 170            TRUE        0.300000000
#> 171            TRUE        0.300000000
#> 172            TRUE        0.300000000
#> 173            TRUE        0.297876816
#> 174            TRUE        0.300000000
#> 175            TRUE        0.300000000
#> 176            TRUE        0.300000000
#> 177            TRUE        0.300000000
#> 178            TRUE        0.300000000
#> 179            TRUE        0.300000000
#> 180            TRUE        0.300000000
#> 181            TRUE        0.300000000
#> 182            TRUE        0.300000000
#> 183            TRUE        0.300000000
#> 184            TRUE        0.300000000
#> 185            TRUE        0.300000000
#> 186            TRUE        0.300000000
#> 187            TRUE        0.300000000
#> 188            TRUE        0.300000000
#> 189            TRUE        0.300000000
#> 190            TRUE        0.300000000
#> 191            TRUE        0.300000000
#> 192            TRUE        0.300000000
#> 193            TRUE        0.300000000
#> 194            TRUE        0.300000000
#> 195            TRUE        0.300000000
#> 196            TRUE        0.300000000
#> 197            TRUE        0.192485605
#> 198            TRUE        0.300000000
#> 199            TRUE        0.300000000
#> 200            TRUE        0.300000000
#> 201            TRUE        0.300000000
#> 202            TRUE        0.300000000
#> 203            TRUE        0.300000000
#> 204            TRUE        0.300000000
#> 205            TRUE        0.294972968
#> 206            TRUE        0.300000000
#> 207            TRUE        0.300000000
#> 208            TRUE        0.300000000
#> 209            TRUE        0.300000000
#> 210            TRUE        0.300000000
#> 211            TRUE        0.300000000
#> 212            TRUE        0.300000000
#> 213            TRUE        0.243665693
#> 214            TRUE        0.300000000
#> 215            TRUE        0.300000000
#> 216            TRUE        0.300000000
#> 217            TRUE        0.300000000
#> 218            TRUE        0.300000000
#> 219            TRUE        0.300000000
#> 220            TRUE        0.300000000
#> 221            TRUE        0.300000000
#> 222            TRUE        0.300000000
#> 223            TRUE        0.300000000
#> 224            TRUE        0.300000000
#> 225            TRUE        0.300000000
#> 226            TRUE        0.300000000
#> 227            TRUE        0.300000000
#> 228            TRUE        0.300000000
#> 229            TRUE        0.300000000
#> 230            TRUE        0.300000000
#> 231            TRUE        0.300000000
#> 232            TRUE        0.300000000
#> 233            TRUE        0.300000000
#> 234            TRUE        0.300000000
#> 235            TRUE        0.300000000
#> 236            TRUE        0.300000000
#> 237            TRUE        0.300000000
#> 238            TRUE        0.300000000
#> 239            TRUE        0.300000000
#> 240            TRUE        0.300000000
#> 241            TRUE        0.300000000
#> 242            TRUE        0.300000000
#> 243            TRUE        0.300000000
#> 244            TRUE        0.300000000
#> 245            TRUE        0.300000000
#> 246            TRUE        0.300000000
#> 247            TRUE        0.300000000
#> 248            TRUE        0.300000000
#> 249            TRUE        0.218995576
#> 250            TRUE        0.300000000
#> 251            TRUE        0.300000000
#> 252            TRUE        0.300000000
#> 253            TRUE        0.300000000
#> 254            TRUE        0.300000000
#> 255            TRUE        0.300000000
#> 256            TRUE        0.300000000
#> 257            TRUE        0.300000000
#> 258            TRUE        0.300000000
#> 259            TRUE        0.300000000
#> 260            TRUE        0.300000000
#> 261            TRUE        0.300000000
#> 262            TRUE        0.300000000
#> 263            TRUE        0.300000000
#> 264            TRUE        0.300000000
#> 265            TRUE        0.300000000
#> 266            TRUE        0.300000000
#> 267            TRUE        0.300000000
#> 268            TRUE        0.300000000
#> 269            TRUE        0.192096761
#> 270            TRUE        0.300000000
#> 271            TRUE        0.300000000
#> 272            TRUE        0.300000000
#> 273            TRUE        0.300000000
#> 274            TRUE        0.300000000
#> 275            TRUE        0.300000000
#> 276            TRUE        0.300000000
#> 277            TRUE        0.276625137
#> 278            TRUE        0.300000000
#> 279            TRUE        0.300000000
#> 280            TRUE        0.300000000
#> 281            TRUE        0.300000000
#> 282            TRUE        0.300000000
#> 283            TRUE        0.300000000
#> 284            TRUE        0.300000000
#> 285            TRUE        0.300000000
#> 286            TRUE        0.300000000
#> 287            TRUE        0.300000000
#> 288            TRUE        0.300000000
#> 289            TRUE        0.300000000
#> 290            TRUE        0.300000000
#> 291            TRUE        0.300000000
#> 292            TRUE        0.300000000
#> 293            TRUE        0.300000000
#> 294            TRUE        0.300000000
#> 295            TRUE        0.300000000
#> 296            TRUE        0.300000000
#> 297            TRUE        0.300000000
#> 298            TRUE        0.300000000
#> 299            TRUE        0.300000000
#> 300            TRUE        0.300000000
#> 301            TRUE        0.300000000
#> 302            TRUE        0.300000000
#> 303            TRUE        0.300000000
#> 304            TRUE        0.300000000
#> 305            TRUE        0.300000000
#> 306            TRUE        0.300000000
#> 307            TRUE        0.300000000
#> 308            TRUE        0.300000000
#> 309            TRUE        0.300000000
#> 310            TRUE        0.300000000
#> 311            TRUE        0.300000000
#> 312            TRUE        0.300000000
#> 313            TRUE        0.300000000
#> 314            TRUE        0.300000000
#> 315            TRUE        0.300000000
#> 316            TRUE        0.300000000
#> 317            TRUE        0.300000000
#> 318            TRUE        0.300000000
#> 319            TRUE        0.300000000
#> 320            TRUE        0.300000000
#> 321            TRUE        0.300000000
#> 322            TRUE        0.300000000
#> 323            TRUE        0.300000000
#> 324            TRUE        0.300000000
#> 325            TRUE        0.300000000
#> 326            TRUE        0.300000000
#> 327            TRUE        0.300000000
#> 328            TRUE        0.300000000
#> 329            TRUE        0.300000000
#> 330            TRUE        0.300000000
#> 331            TRUE        0.300000000
#> 332            TRUE        0.300000000
#> 333            TRUE        0.300000000
#> 334            TRUE        0.300000000
#> 335            TRUE        0.300000000
#> 336            TRUE        0.300000000
#> 337            TRUE        0.232816262
#> 338            TRUE        0.300000000
#> 339            TRUE        0.300000000
#> 340            TRUE        0.300000000
#> 341            TRUE        0.300000000
#> 342            TRUE        0.300000000
#> 343            TRUE        0.300000000
#> 344            TRUE        0.300000000
#> 345            TRUE        0.300000000
#> 346            TRUE        0.300000000
#> 347            TRUE        0.300000000
#> 348            TRUE        0.300000000
#> 349            TRUE        0.300000000
#> 350            TRUE        0.300000000
#> 351            TRUE        0.300000000
#> 352            TRUE        0.300000000
#> 353            TRUE        0.200072431
#> 354            TRUE        0.300000000
#> 355            TRUE        0.300000000
#> 356            TRUE        0.300000000
#> 357            TRUE        0.300000000
#> 358            TRUE        0.300000000
#> 359            TRUE        0.300000000
#> 360            TRUE        0.300000000
#> 361            TRUE        0.300000000
#> 362            TRUE        0.300000000
#> 363            TRUE        0.300000000
#> 364            TRUE        0.300000000
#> 365            TRUE        0.300000000
#> 366            TRUE        0.300000000
#> 367            TRUE        0.300000000
#> 368            TRUE        0.300000000
#> 369            TRUE        0.300000000
#> 370            TRUE        0.300000000
#> 371            TRUE        0.300000000
#> 372            TRUE        0.300000000
#> 373            TRUE        0.300000000
#> 374            TRUE        0.300000000
#> 375            TRUE        0.300000000
#> 376            TRUE        0.300000000
#> 377            TRUE        0.300000000
#> 378            TRUE        0.300000000
#> 379            TRUE        0.300000000
#> 380            TRUE        0.300000000
#> 381            TRUE        0.230513614
#> 382            TRUE        0.300000000
#> 383            TRUE        0.300000000
#> 384            TRUE        0.300000000
#> 385            TRUE        0.300000000
#> 386            TRUE        0.300000000
#> 387            TRUE        0.300000000
#> 388            TRUE        0.300000000
#> 389            TRUE        0.300000000
#> 390            TRUE        0.300000000
#> 391            TRUE        0.300000000
#> 392            TRUE        0.300000000
#> 393            TRUE        0.300000000
#> 394            TRUE        0.300000000
#> 395            TRUE        0.300000000
#> 396            TRUE        0.300000000
#> 397            TRUE        0.300000000
#> 398            TRUE        0.300000000
#> 399            TRUE        0.300000000
#> 400            TRUE        0.300000000
#> 401            TRUE        0.300000000
#> 402            TRUE        0.300000000
#> 403            TRUE        0.300000000
#> 404            TRUE        0.300000000
#> 405            TRUE        0.300000000
#> 406            TRUE        0.300000000
#> 407            TRUE        0.300000000
#> 408            TRUE        0.300000000
#> 409            TRUE        0.300000000
#> 410            TRUE        0.300000000
#> 411            TRUE        0.300000000
#> 412            TRUE        0.300000000
#> 413            TRUE        0.300000000
#> 414            TRUE        0.300000000
#> 415            TRUE        0.300000000
#> 416            TRUE        0.300000000
#> 417            TRUE        0.300000000
#> 418            TRUE        0.300000000
#> 419            TRUE        0.300000000
#> 420            TRUE        0.300000000
#> 421            TRUE        0.300000000
#> 422            TRUE        0.300000000
#> 423            TRUE        0.300000000
#> 424            TRUE        0.300000000
#> 425            TRUE        0.300000000
#> 426            TRUE        0.300000000
#> 427            TRUE        0.300000000
#> 428            TRUE        0.300000000
#> 429            TRUE        0.300000000
#> 430            TRUE        0.300000000
#> 431            TRUE        0.300000000
#> 432            TRUE        0.300000000
#> 433            TRUE        0.300000000
#> 434            TRUE        0.300000000
#> 435            TRUE        0.300000000
#> 436            TRUE        0.300000000
#> 437            TRUE        0.300000000
#> 438            TRUE        0.300000000
#> 439            TRUE        0.300000000
#> 440            TRUE        0.300000000
#> 441            TRUE        0.300000000
#> 442            TRUE        0.289002028
#> 443            TRUE        0.300000000
#> 444            TRUE        0.300000000
#> 445            TRUE        0.300000000
#> 446            TRUE        0.300000000
#> 447            TRUE        0.300000000
#> 448            TRUE        0.300000000
#> 449            TRUE        0.300000000
#> 450            TRUE        0.300000000
#> 451            TRUE        0.300000000
#> 452            TRUE        0.300000000
#> 453            TRUE        0.300000000
#> 454            TRUE        0.300000000
#> 455            TRUE        0.300000000
#> 456            TRUE        0.300000000
#> 457            TRUE        0.300000000
#> 458            TRUE        0.300000000
#> 459            TRUE        0.300000000
#> 460            TRUE        0.300000000
#> 461            TRUE        0.300000000
#> 462            TRUE        0.300000000
#> 463            TRUE        0.300000000
#> 464            TRUE        0.300000000
#> 465            TRUE        0.300000000
#> 466            TRUE        0.300000000
#> 467            TRUE        0.300000000
#> 468            TRUE        0.300000000
#> 469            TRUE        0.300000000
#> 470            TRUE        0.300000000
#> 471            TRUE        0.300000000
#> 472            TRUE        0.300000000
#> 473            TRUE        0.300000000
#> 474            TRUE        0.300000000
#> 475            TRUE        0.300000000
#> 476            TRUE        0.300000000
#> 477            TRUE        0.300000000
#> 478            TRUE        0.300000000
#> 479            TRUE        0.300000000
#> 480            TRUE        0.300000000
#> 481            TRUE        0.262011704
#> 482            TRUE        0.300000000
#> 483            TRUE        0.300000000
#> 484            TRUE        0.300000000
#> 485            TRUE        0.300000000
#> 486            TRUE        0.300000000
#> 487            TRUE        0.300000000
#> 488            TRUE        0.300000000
#> 489            TRUE        0.300000000
#> 490            TRUE        0.300000000
#> 491            TRUE        0.300000000
#> 492            TRUE        0.300000000
#> 493            TRUE        0.300000000
#> 494            TRUE        0.300000000
#> 495            TRUE        0.300000000
#> 496            TRUE        0.300000000
#> 497            TRUE        0.300000000
#> 498            TRUE        0.300000000
#> 499            TRUE        0.300000000
#> 500            TRUE        0.300000000
#> 501            TRUE        0.300000000
#> 502            TRUE        0.300000000
#> 503            TRUE        0.300000000
#> 504            TRUE        0.300000000
#> 505            TRUE        0.300000000
#> 506            TRUE        0.300000000
#> 507            TRUE        0.300000000
#> 508            TRUE        0.300000000
#> 509            TRUE        0.300000000
#> 510            TRUE        0.300000000
#> 511            TRUE        0.300000000
#> 512            TRUE        0.300000000
#> 513            TRUE        0.300000000
#> 514            TRUE        0.300000000
#> 515            TRUE        0.300000000
#> 516            TRUE        0.300000000
#> 517            TRUE        0.300000000
#> 518            TRUE        0.300000000
#> 519            TRUE        0.300000000
#> 520            TRUE        0.300000000
#> 521            TRUE        0.300000000
#> 522            TRUE        0.300000000
#> 523            TRUE        0.300000000
#> 524            TRUE        0.300000000
#> 525            TRUE        0.300000000
#> 526            TRUE        0.300000000
#> 527            TRUE        0.300000000
#> 528            TRUE        0.300000000
#> 529            TRUE        0.300000000
#> 530            TRUE        0.300000000
#> 531            TRUE        0.300000000
#> 532            TRUE        0.300000000
#> 533            TRUE        0.300000000
#> 534            TRUE        0.300000000
#> 535            TRUE        0.300000000
#> 536            TRUE        0.300000000
#> 537            TRUE        0.300000000
#> 538            TRUE        0.300000000
#> 539            TRUE        0.300000000
#> 540            TRUE        0.300000000
#> 541            TRUE        0.200830926
#> 542            TRUE        0.300000000
#> 543            TRUE        0.300000000
#> 544            TRUE        0.300000000
#> 545            TRUE        0.300000000
#> 546            TRUE        0.300000000
#> 547            TRUE        0.300000000
#> 548            TRUE        0.300000000
#> 549            TRUE        0.108502688
#> 550            TRUE        0.300000000
#> 551            TRUE        0.300000000
#> 552            TRUE        0.300000000
#> 553            TRUE        0.300000000
#> 554            TRUE        0.300000000
#> 555            TRUE        0.300000000
#> 556            TRUE        0.300000000
#> 557            TRUE        0.207138515
#> 558            TRUE        0.300000000
#> 559            TRUE        0.300000000
#> 560            TRUE        0.300000000
#> 561            TRUE        0.300000000
#> 562            TRUE        0.300000000
#> 563            TRUE        0.300000000
#> 564            TRUE        0.300000000
#> 565            TRUE        0.300000000
#> 566            TRUE        0.300000000
#> 567            TRUE        0.300000000
#> 568            TRUE        0.300000000
#> 569            TRUE        0.300000000
#> 570            TRUE        0.300000000
#> 571            TRUE        0.300000000
#> 572            TRUE        0.300000000
#> 573            TRUE        0.283357237
#> 574            TRUE        0.300000000
#> 575            TRUE        0.300000000
#> 576            TRUE        0.300000000
#> 577            TRUE        0.300000000
#> 578            TRUE        0.300000000
#> 579            TRUE        0.300000000
#> 580            TRUE        0.300000000
#> 581            TRUE        0.300000000
#> 582            TRUE        0.300000000
#> 583            TRUE        0.300000000
#> 584            TRUE        0.300000000
#> 585            TRUE        0.300000000
#> 586            TRUE        0.300000000
#> 587            TRUE        0.300000000
#> 588            TRUE        0.300000000
#> 589            TRUE        0.300000000
#> 590            TRUE        0.300000000
#> 591            TRUE        0.300000000
#> 592            TRUE        0.300000000
#> 593            TRUE        0.300000000
#> 594            TRUE        0.300000000
#> 595            TRUE        0.300000000
#> 596            TRUE        0.300000000
#> 597            TRUE        0.300000000
#> 598            TRUE        0.300000000
#> 599            TRUE        0.300000000
#> 600            TRUE        0.300000000
#> 601            TRUE        0.300000000
#> 602            TRUE        0.300000000
#> 603            TRUE        0.300000000
#> 604            TRUE        0.300000000
#> 605            TRUE        0.300000000
#> 606            TRUE        0.300000000
#> 607            TRUE        0.300000000
#> 608            TRUE        0.300000000
#> 609            TRUE        0.300000000
#> 610            TRUE        0.300000000
#> 611            TRUE        0.300000000
#> 612            TRUE        0.300000000
#> 613            TRUE        0.300000000
#> 614            TRUE        0.300000000
#> 615            TRUE        0.300000000
#> 616            TRUE        0.300000000
#> 617            TRUE        0.300000000
#> 618            TRUE        0.300000000
#> 619            TRUE        0.300000000
#> 620            TRUE        0.300000000
#> 621            TRUE        0.300000000
#> 622            TRUE        0.300000000
#> 623            TRUE        0.300000000
#> 624            TRUE        0.300000000
#> 625            TRUE        0.300000000
#> 626            TRUE        0.300000000
#> 627            TRUE        0.300000000
#> 628            TRUE        0.300000000
#> 629            TRUE        0.300000000
#> 630            TRUE        0.300000000
#> 631            TRUE        0.300000000
#> 632            TRUE        0.300000000
#> 633            TRUE        0.216041223
#> 634            TRUE        0.300000000
#> 635            TRUE        0.300000000
#> 636            TRUE        0.300000000
#> 637            TRUE        0.300000000
#> 638            TRUE        0.300000000
#> 639            TRUE        0.300000000
#> 640            TRUE        0.300000000
#> 641            TRUE        0.300000000
#> 642            TRUE        0.300000000
#> 643            TRUE        0.300000000
#> 644            TRUE        0.300000000
#> 645            TRUE        0.300000000
#> 646            TRUE        0.300000000
#> 647            TRUE        0.300000000
#> 648            TRUE        0.300000000
#> 649            TRUE        0.300000000
#> 650            TRUE        0.300000000
#> 651            TRUE        0.300000000
#> 652            TRUE        0.300000000
#> 653            TRUE        0.300000000
#> 654            TRUE        0.300000000
#> 655            TRUE        0.300000000
#> 656            TRUE        0.300000000
#> 657            TRUE        0.282152063
#> 658            TRUE        0.300000000
#> 659            TRUE        0.300000000
#> 660            TRUE        0.300000000
#> 661            TRUE        0.300000000
#> 662            TRUE        0.300000000
#> 663            TRUE        0.300000000
#> 664            TRUE        0.300000000
#> 665            TRUE        0.300000000
#> 666            TRUE        0.300000000
#> 667            TRUE        0.300000000
#> 668            TRUE        0.300000000
#> 669            TRUE        0.300000000
#> 670            TRUE        0.300000000
#> 671            TRUE        0.300000000
#> 672            TRUE        0.300000000
#> 673            TRUE        0.300000000
#> 674            TRUE        0.300000000
#> 675            TRUE        0.300000000
#> 676            TRUE        0.300000000
#> 677            TRUE        0.300000000
#> 678            TRUE        0.300000000
#> 679            TRUE        0.300000000
#> 680            TRUE        0.300000000
#> 681            TRUE        0.300000000
#> 682            TRUE        0.300000000
#> 683            TRUE        0.300000000
#> 684            TRUE        0.300000000
#> 685            TRUE        0.224289624
#> 686            TRUE        0.300000000
#> 687            TRUE        0.300000000
#> 688            TRUE        0.300000000
#> 689            TRUE        0.215074066
#> 690            TRUE        0.300000000
#> 691            TRUE        0.300000000
#> 692            TRUE        0.300000000
#> 693            TRUE        0.289684034
#> 694            TRUE        0.300000000
#> 695            TRUE        0.300000000
#> 696            TRUE        0.300000000
#> 697            TRUE        0.279018757
#> 698            TRUE        0.300000000
#> 699            TRUE        0.300000000
#> 700            TRUE        0.300000000
#> 701            TRUE        0.300000000
#> 702            TRUE        0.300000000
#> 703            TRUE        0.300000000
#> 704            TRUE        0.300000000
#> 705            TRUE        0.300000000
#> 706            TRUE        0.300000000
#> 707            TRUE        0.300000000
#> 708            TRUE        0.300000000
#> 709            TRUE        0.300000000
#> 710            TRUE        0.300000000
#> 711            TRUE        0.300000000
#> 712            TRUE        0.300000000
#> 713            TRUE        0.300000000
#> 714            TRUE        0.300000000
#> 715            TRUE        0.300000000
#> 716            TRUE        0.300000000
#> 717            TRUE        0.300000000
#> 718            TRUE        0.300000000
#> 719            TRUE        0.300000000
#> 720            TRUE        0.300000000
#> 721            TRUE        0.300000000
#> 722            TRUE        0.300000000
#> 723            TRUE        0.300000000
#> 724            TRUE        0.300000000
#> 725            TRUE        0.300000000
#> 726            TRUE        0.300000000
#> 727            TRUE        0.300000000
#> 728            TRUE        0.300000000
#> 729            TRUE        0.300000000
#> 730            TRUE        0.300000000
#> 731            TRUE        0.300000000
#> 732            TRUE        0.300000000
#> 733            TRUE        0.196493901
#> 734            TRUE        0.300000000
#> 735            TRUE        0.300000000
#> 736            TRUE        0.300000000
#> 737            TRUE        0.300000000
#> 738            TRUE        0.300000000
#> 739            TRUE        0.300000000
#> 740            TRUE        0.300000000
#> 741            TRUE        0.300000000
#> 742            TRUE        0.300000000
#> 743            TRUE        0.300000000
#> 744            TRUE        0.300000000
#> 745            TRUE        0.300000000
#> 746            TRUE        0.300000000
#> 747            TRUE        0.300000000
#> 748            TRUE        0.300000000
#> 749            TRUE        0.300000000
#> 750            TRUE        0.300000000
#> 751            TRUE        0.300000000
#> 752            TRUE        0.300000000
#> 753            TRUE        0.300000000
#> 754            TRUE        0.300000000
#> 755            TRUE        0.300000000
#> 756            TRUE        0.300000000
#> 757            TRUE        0.300000000
#> 758            TRUE        0.300000000
#> 759            TRUE        0.300000000
#> 760            TRUE        0.300000000
#> 761            TRUE        0.300000000
#> 762            TRUE        0.300000000
#> 763            TRUE        0.300000000
#> 764            TRUE        0.300000000
#> 765            TRUE        0.300000000
#> 766            TRUE        0.300000000
#> 767            TRUE        0.300000000
#> 768            TRUE        0.300000000
#> 769            TRUE        0.300000000
#> 770            TRUE        0.300000000
#> 771            TRUE        0.300000000
#> 772            TRUE        0.300000000
#> 773            TRUE        0.300000000
#> 774            TRUE        0.300000000
#> 775            TRUE        0.300000000
#> 776            TRUE        0.300000000
#> 777            TRUE        0.300000000
#> 778            TRUE        0.300000000
#> 779            TRUE        0.300000000
#> 780            TRUE        0.300000000
#> 781            TRUE        0.300000000
#> 782            TRUE        0.300000000
#> 783            TRUE        0.300000000
#> 784            TRUE        0.300000000
#> 785            TRUE        0.300000000
#> 786            TRUE        0.300000000
#> 787            TRUE        0.300000000
#> 788            TRUE        0.300000000
#> 789            TRUE        0.300000000
#> 790            TRUE        0.300000000
#> 791            TRUE        0.300000000
#> 792            TRUE        0.300000000
#> 793            TRUE        0.300000000
#> 794            TRUE        0.300000000
#> 795            TRUE        0.300000000
#> 796            TRUE        0.300000000
#> 797            TRUE        0.300000000
#> 798            TRUE        0.300000000
#> 799            TRUE        0.300000000
#> 800            TRUE        0.300000000
```
