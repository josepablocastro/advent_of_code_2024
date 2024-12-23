defmodule Advent2024.Day04Test do
  use ExUnit.Case

  test "part2" do
    [
      "MMMSXXMASM",
      "MSAMXMSMSA",
      "AMXSXMAAMM",
      "MSAMASMSMX",
      "XMASAMXAMM",
      "XXAMMXXAMA",
      "SMSMSASXSS",
      "SAXAMASAAA",
      "MAMMMXMMMM",
      "MXMXAXMASX"
    ]

    data()
    |> Enum.reduce(Matrix.new(), fn l, matrix ->
      row = String.codepoints(l)
      Matrix.add_row(matrix, row)
    end)
    |> Advent2024.Day04.part2()
    |> IO.inspect(label: "Part2")
  end

  test "part1" do
    [
      "MMMSXXMASM",
      "MSAMXMSMSA",
      "AMXSXMAAMM",
      "MSAMASMSMX",
      "XMASAMXAMM",
      "XXAMMXXAMA",
      "SMSMSASXSS",
      "SAXAMASAAA",
      "MAMMMXMMMM",
      "MXMXAXMASX"
    ]

    data()
    |> Enum.reduce(Matrix.new(), fn l, matrix ->
      row = String.codepoints(l)
      Matrix.add_row(matrix, row)
    end)
    |> Advent2024.Day04.part1()
    |> IO.inspect(label: "Part1")
  end

  def data do
    [
      "SAMXXSXXSXSAMXMMSMMMMSAMXSXMMMAMXXMSSMSMMMMMXSAXMAMMSSMXMXMAXSXSASMSSMXMMSAMXMMXMMSSSMMMSAMXXSASMSAMXMSXXAMAMXMMXMSAMXSMSMSXSMAMXMASXMXAMSMM",
      "MAMMXSMMMAASMMMASAAAAXAMASXMASMMSSMAMAASAASXMMMMSAMXAAAAMMMSAXXMASXAAASAAXMXASMXSAXMASAAMMSXMXAMASXXAMXXMMSAMXXXAMXXMXXAXAAAXSMXMAMMAMSAMAAX",
      "SAMXAXAAMAMMSXMASXMMMXAMASASASAAAAMMSSMSMMXAXAAAMASMSSMMXAAXMSAMXMMSMMAMMXAMXXAAMMXSAMMMMAMASMSMAMXMSSMAMAAAXXMSMSAXXAMXMMMSMAXSSMMSAMMASXSM",
      "SSSMXMXSXAMXAXMXXMMAMSMMXSAMASMMSSMXAAXSXMSMMMMSSMMAAXMAMMSMMXMASMAXAAMSSXMSMSMMMXXMAMSXMASMMAAMAMMAAAXMMSSMMAAAXMMSMXMASXAMMMMMAAMSASMXMAXA",
      "SAMXMSMMXMSMMMMSMMMAMAXSMSXSXSXAXXXMSSMMAXAAAMAAAAMSMMMSAXAAXMMAAMXSAMXAXAAXAASXXMMSSMAMSAMAMSMSXSAMSMMMAAAAAXMAXMAMXAXXMMMMSXXSSMMMXMAMSASM",
      "MSMAAAAMXMAXXAAAASXSSMMMAMAMXXMSMMMMXMASMSSSMSSSSMMMXMAXMSSSMMMASXMMMMMMSMMMSMSMMSAAAMMXMSSMXAMXAAXXAMSMSXMMMMXSXMASXSMSMXSAMXXMXASMSASXMASM",
      "SXSMSMSAXXAMXMSSSMAAXMAMAMAMSXMASAASMSMMXAXMAXAMXXMASMAXXAXXAAMSMMMAAAXXMAMAAAXXAMMSSSXMAXXXSSSMMMMMMMSAMASMXSAMASXSMXAAMAMASXXMAXSAMXMAMAMX",
      "MASMAMMASMMMSXAMMMMMASXSASASAMSASMSMAAXXMXMMXMAMXSAAXMASXSSSSMSXMXSSSSXSMSMSMSMMXSXAAXAMAMAMXMAMSAAASAMAMSMAAMXSAMASAMSMMMSASMMAXXMMMASXMSMX",
      "MAMMSXMAMAAASMMSAXMMMSASAMMSXXMXMXXMSMMXASAMMSMMMAXMASXSAAMAMXSMMAXMAMXSAMXMAMXMSMXMMMXMXAMXASXMXSSXMASXMAMMMMAMXSXMAMMAXXMMSASASXSXSXXXMAXA",
      "MXSAMMMMSMMXSAXSMXXMAMMMAXXXMMSMXMMMMASAAXMMAAAXAMXMASAMMMMAMSMAMMSMMMAMAMAMXMASAMMAAMXSXSXSASMSMAXXSAMXXXMAXSMXMXAXMMSMMSMASAMASAMASMMMSSMM",
      "AXMASAAMAXMXMXMMXSAMSXMMSMMASAAAASASAAAMMMXMSSSXXXXMSMAMAXMAMAXXMMAAXMAMMMSMAMXXAMSSXSAMXMXSXSAAXAMXMASMMSSSXSAMMMSAXAXXASMAMAMAMAMAMAAAAAAM",
      "XSMASMMSASMSMXMAASAMAASAMASAMSMSMSASMXXAXSAMXMAMAMXMAAMMMSSSSSMMASXSMXAMAAAXXMXXAXAAMMMMAMXXAMMMSSMMXAXAMXAMAMMMSAXMMSMMXMXAXAMAMAMASMMSSSMM",
      "SXMASAMMXSAAMSMSXSAMSSMASAMXXXXMAMAMAMXMXSASMMASMMASXSMAXMAXAAASMMMAMMMSMSSXSAAMSMMSMAASMSSMSMSXAMMMMSSMMMXMXMXAAXAMAMASAMSSSXSSSMSMXAMMMAXS",
      "AMMAMAMXMMMXMAAXAXAMXAMXMXMMXSASXMSMSAASMSAMAMASAMAMXAXXSXMMXMMAMAMXMAMAMXAAMXMSMAXXXMXMXAMAXAXMSSMSAMAMMMAXAAAXMSMSASXMAMAAAAAXAXXMSMMXMAXX",
      "MMMSXMMMXAASMMMMMMSASXMMMSXMXSMMAMXAXSMSAMMMSMXSMSSMSXMMSAXXXSAMXSMMSXSASAMXMXSAXAMMMSAMMSSSMSMMMAMMASXMASMXSAMXXAASASXSXMMSMMMSMMSMAMMMMSSS",
      "XMAXAMXASXSXAASXSAXASAXAAAXMAMXSAMMAMMXMAMASAMXMXAAXSAMASXMASXSXAAAAXAAMMXSAMMSASMSAASAXAMXXMAAXMAMXMMXXXXAAMASMMMXMMMMMAMAMXAAXMAAXASMMMAAX",
      "XMASXMAMMMMMXMAXMASASXSMMSSMASAXMAMXAMXMASMSAXMXMMMASAMASAMXXAXMXSMMSAMXAASASAMXMASMXXMMSMMSXSXMSSSXSMSASMMMMAMXASAXMAXSAMASXMMSMXSMMXAAMMSM",
      "ASAMXSXAAAAXSMSSMXMXMXMAAAXMSMMMSASXMAAXAMXSAMSXMSXASAMASAMAMSMMMXAMMXAMMXSAMASXMXMXAXSAXASXAMAXAXAAAAXASAMXMSSSXSSXSAXSASASAXAAXMMASXSMMMMA",
      "AMASAMXXMMSSXAAAAAMAXMSAMSSMMAMAMAMASMMSMMAXAXXAXAMXSMMMSXMMMAAAXXMXASXMSAMASXMAAMXXSXMASXMMSMMMSSSSMXMXMMMAMAAXXMAXMMXMXMXMMMSSSXSAMAXMMAMM",
      "MSMMMSMSMAMMMMMSXASXSMXXMXAASXMASASAMXMAMXASXMSXMXSMXXAMXXMXXSMMMSSMMSAAMXXAMAMSMMMAMAMAMASAXAAAMXXXXXSMSMXAMMXMXSMSMXSAMXMMSAMXMAMMMMMMSASX",
      "XAXMXSAAMXMAXSXMMMAXAAMSMSMMMMSMXMAAXXMASMMMXAAXSXSASMMSSSMSMXASXXAAAMMMMSMASXMAAXXAXAMAMXMAXSMXSXMAMMAAAMSSSXMMAMXSMAASAMXAMMSASMMSAMSMSASM",
      "SXSXAMSMSMSAXSAXSMMSSMAAAAXMXMAAXMMSMXMAMAAAMMMSAAMXSXMAMXXAAMAMSSSMMXMAAASMMXXSMMSMSXSAMMXSXXXXSAMMSMMSMMAAMXXMASAMMMMMSMMMMMSASAAMAXXASAXX",
      "XASMMMXXXAXMASAMXMAAAMSMSMMMASMSMMAMAMMSSSMXMAXAMXMASAMSSMXMSMAMAXMXXASMSXMXXSMMXXAXAXMXXSAXMSAMMAMAAXXAXMMSMSMSMSXMAXXAXMASXXMAXMMSSMMMMMMM",
      "MMMAASMSMSMSASXAAMMMXMAAXAASXSMMAMXSAMXAAMAXSSSSXAMMXAMXMXAAAXAMXSSSSMMAMXMSMMAXMASMMMSAMMAMAXMASMMSSSSMXAXMAAAAAMMSMSMMXSASMSMSXAAAXXAXAASX",
      "XMASASAAMAXXAXMSMSSMMSMSMSMSAXASAMXSMMXMSMMMXMAMMSSSSSMMASMSMSSMXXAAAAMSMSMAAMSMSMXXSASASMMMSMXMMAAAAAAXXSXMSMXMSMAAMXASAMXXAAAASMMSASMXXAMX",
      "MMAXAMMMSMSMAMAXAAAMAMAAAAXXMMXMXSXSAASXMASXAMAMSASAMXAMMMXXXMAMXSMSMMMMAXSMSMAAAXXXMASAMXMAMXMMSSMMSMMMAMAMXMASXMMSSMMMMSAMSMSMAXXXASAMXSSS",
      "XMAMAMMXAAAXXMXSMSSMXMSMSMSSXMASXXASAMXASAMXSXMSMMSMMMXMAXMXMXSMAAAMMSAMSMSXMXSSMMMXMAMAMSMASAMAAAXAXAAXAXAMASXMASAMMXSAMSAMXAMXSAMXSMMMMXAM",
      "XMASAMSSMSMSMSXSAMXMAXAMAMMMAXAAMMMMMMSMMMSMAXSAMXMASAASXXMASAMAMMSMASAMAAMAMXXAXXMMMXXAMAMASMMMSSMXSMSMSMXSASXSAMASMMSAMSAMMAXAXAMMXXXAAMMM",
      "MSMSXSAMAAMMAAAXXAMXMSASXSSSSMSSMSAMAAXAAAXAMMXAMASAMMMMAMSAMAMSXAXMASMSMXMAMSSMMSXASASASMMXMXMXXXMXXXXAXAXMASAMASXMAXSSMMAMMMMMSASAMMMMSMXM",
      "AAMSXSAMSMSMMSSMMMSAMSAMAMXAAAAMASXSMSSSMSSSXSXSMAMAXXAMAMMAMMMXMMSMAMAAAXMAMXAAAMSMMAAMSXMAASMMMMMSXAMAMXMMXMAMAMXSAMXMMSMMASMXSMMMSAASAMAA",
      "SSMSAMXMXAXXAAAAMAMAMMMMAMMMMMMSAMXAMXAXXAAMAAAMMSMMMSMSAMSAMSXXAAAXAMSXMAMSSSSMAXAXMSMXMAMXXXAAMAASMSMMMAAAAMXMMXASASXXMAMXXXMASXAXXMMSASMS",
      "XMMMXMAMMXMMSSSSMASXMAXSASXSSMXMAXAMSMMMMASMXMMMAMSMASMSXMMXSMAXMMSSXXAMSMXMAMXMXSASMMXMXSMSMMSMMMXMAAAASMSSSMSSSMASAMXSXSSSSMMMSMMSMSXSAMMM",
      "XAAAASAXXMXMXAAAMASAMXMSASAAAXSSSMMXMXXAMMMMXMAMSMXMXSAMXXXMAMMXSAAAXSAXAXXMAMMMAMXMAMAMAMAMAAXXSMMMSMSMSAAMAAAAAMAMAMAXAMXXAAXSXMXAAMASXMAS",
      "SSMSMSASMMSMMMMXMSSXMXAMXMMMMMAAASXAMSSMSXAMMSSSMAMMMMAMMXSSXMAAMMXXMMMSSSXSAMAMASAMASMSAMAMSMSASXAXAAAXMMMSMMMSAMXSSMAMSSSSMMMMAMSMSMXMXSAS",
      "MAAXMMMAAASAXSMSSMMMSXAMAMAXSMMSMMSXMAAAAMMSMAMAXXAAASXMMAAMXMMSSSSMSAAXMAASMSXSASASASMMXXSMXAMAMSMMMSMSXSAAAXAAMXAMXXXMAAAAXMASMMMXXMAMXMMS",
      "SMMMXAAMSXSAMXMXAASAXSSMXSASXMXXMAMSMSSMMSAAMAXXMSMSXSMAMMXSAXSXAAAASXMSMMMMMMMSASAMXSAXMSAAMXMAMAXSAMXSAMSSMMXXSSSMMXXASMASMSMSAAXXMSSSXMAS",
      "SXAXSMMMMASMSXSSSMMMXAXAMMXSAXMASMMXMMAAXMASMXMAMSXMAXMAMAAXMMAMMMMMMSAAAAAAMAAMMMMMXSAMXAMXMAXAXSAMXSMMMMAMXSAMAAAMAXXAMXAMMXMSMMMMMMMAAMAM",
      "MSSMMXAAMMMASAAXAAAXMAMXMAMMXMXMAXMAMMSSMXMXASMMMMAMSMSXMMSXMXSAAXMSAMXMAXMXMMSMMAASXMAXXMXASMSMSMMSASAAXMASASASMSMMASMMMMMSMAAXSXMAAASMSMSS",
      "XAXAASMXMXMAMMMSSMMSMXMXAMSMMMAMSMSSXXAMXXXMAMMMSSMMXAXSXMXASAMMMMMMMSSXSMSMSMMXSSXSASXMSXSMXMAMXAXMASXSSSXMASAMAAXMASAMXMAAXASMASAMSASAXAXX",
      "MASMMMSAXAMAMAXXXXXXMSMSXAAXAMXSMMAAXMMSXAAMAMMAAAAAMXMSMASAMAXAAAXMAXXAAAAAASMAXXASAMMSMAXAXSMSSMMMMMAXAMXMAMAMSMSMASAMSXSMSSMMAMSMMMMAMXMX",
      "MMMASASMSXSASMSMSMMMASAMASMSMSXSXMMSMMASXMMMAXMMMXMMSMAXMAMAMMXMMSMMXMMSMSMSMXSMMSMXMSXAMSMMMSXMASAXMMXMMSMMSSMMMXSXXXMASAAXMASMAMXXXAMXMSAS",
      "XMSMMASAMXXAXAAMAMASMMAMXXXAAAAMSMSMAMMSAMASMSSSSMXMAMSSMMSSMAASXXXSSXAXXMAAXAMXMAXASMXASXSXAXASAMSMAMXSASAAAAXAXASXMASAMSMMSXMMSXSASMMMSMAM",
      "MXAAMAMAMSMSMSMSXXMSASXMASMMSMSMAMASMMAXAMAXAAAAMAAXXSXAAAAAMSXSAXAAAMMSAMXMMXMAMMMXSAXMAAXXXSAMXSXXAMSMASMMSMMMMASAMASAXXMASAXXXAXXMAASMMAM",
      "ASXSMMSSMMAAAXMMXSXSAMXMASXAAAAMMSASXMMSXMSSMMMSMSASMMMSMMSSMMMMMMMMMMXSAMAXSXSXSXXSMMMSMMMMXXASMMMSXMAMXMXAXMXAAMMAMASAMXMASASXMMMSXMMSASMS",
      "MAMXAXAMAMXMSMAAXSAMAMXMASMSMSMSXMASMSXSAAAXXAXXAMXXAAAMXMAMXAAASXMXMXXXASMSMAMAAAXMAMASAMXAMSMMXAAMSSXMMXSXMSSSSMSAMXMMAAMAMAMMAXAAAMASXMAM",
      "MXASXMASMAMMMXMSMMMMAMXMASXXAXASXMSMAMAMMMMSSMXMXMXSMMMXAMASMMSXMAMAMSMXMMXAMAMXMXSSSMASAMXMAXAASMSAAMSXMAMAAXAAAMMXMAXAXXXAMXMSSMMXSAAMAMAM",
      "XMMMXAMXXAXXAMMMAXXSASXMASMMXMAMMMMMAMASXAMXMAXMAMXXAAXMXMAXAXXMMAMAMAAMSMXSAMMMMXMAMMXMXSAMSSMMSAMMASASMAMXMMMMSMMSMSXSSSSMSAMMMXSAMMAMXXSS",
      "SXASXMSMSMMMASAMAMXMMMAMASAMXMAMAAASXSASXSXMASASAXSSSMSASMSSSMSASMSMSSSXAAMXAXMASAMAMAAMXMASAAAAXXMSSMASXMMSMMSAMAMSAAAXAAXASMSAAAMXSXMXSAAX",
      "XSAAMAAAAAASMMXSASXMASXMASMMXSASXSXSAMASMXAMSMASASAXXMAMXAXAXXMAMAAAAAAMMXMXMMSSSXSASXMSASXMXSMMSMXXMASXAXAMAAMAXXMMAMXMMMMXMASMMMSASASAAMAM",
      "XMMSMSMSMSMSAAASAMXSXSAMASAMASASAXMMMMAMASXMMMAMMMMXMSMMMSMMSAMXMSMMMXMASASXMAMXMMMMSXASASAAXMAAXMAMXMMSMMSSMMSMMSMXAMAXAAAMMAMAAXMAMXMASXAA",
      "XXAXMMMMXMASMMMMMMASMSXMXSAMXMAMXMMAAMXSMXMASMMXSAXAMAXXAMAXAMMXMXAXXSXASAMXMAXAMAAAMMMMMMMSMSMMSSSMSXAXXAXAXXAXAXAXMMXSSSSXMASMMXSMMSAMAXMS",
      "SMASAAASMMAMAMSAMSMMASMMXSXXXMXMAXSASMAXAMXMXAAASASXSXSMASMMMSMAMSMMAAMMMAXXSXSSSMMMSAXXXAAAMAAMAXAASMSMMSSMMSSSMSSMSMXMMAXXMXXMSASAAXAXMASA",
      "XAXSXMMXAMMSAAXAXAXMXMASAMMMMMAMXXMAMMMMSMSMSAMXSXMAXAXMAMAXXMMXMXXAXMMSSMSMSMAAAASASMSSSMSSMMXMXMMMMAXXMAAAMXMAXAXAXMSAMAMMMMAAMASMMXMMXMAM",
      "MXXMMMXSSMAMMSSXMMMSXSAMASXAAXASAMXSXAMAAAAXMAMAXAMXMSMSXSAMXSMSMMMMXXSAAXXAXMMMMMMASXXAAXXMASXMMSAAMSMSMSSXMASMMSMXMAMXMSMXASXMMXMMMSMSAAAM",
      "XAMXAAXAXMMSAXXAXXAMAMMSXMMSMSSSMSAMXSMMMSMSXMMSSMMAXMASMAXXXXAAAAAMXSMSSMMMMMAAXXMAMMMSMMSMMMAAAMXSSXAAAAMAXXMXAXMASMXSSMMSMSMXMXSXMAASMSSS",
      "XSSSMSSXMAAAMMSMMXXMXMXXXSAAXMASAMMSAXAXXXMXMSMAAASMSMAMAMSXSMSMSMSMMXAMMXAMASMSMMMMXSAMAASMSSSMMSMXMMMMMMSSMSSMXMSXMAASAMXAAMXMAMMASMMMXAXA",
      "MXAAAAMAMXMXXAAXMMSMMXMAMASXSMAMXMSMMSSMMMXMAAMSXMSMAMMMXXXAMAMAXAMASMSMSMMSMSAMAMXMAMASMXSAMAMMMAAAMAAXXXXAAXAMMXAAMMMSAMSMSMAMSXSAMMASMMSX",
      "AMSMMMSXMAMMASASMAAAMAMMXMASAMAMXMXAXAMASMASXMXMAXMAAMMSMSSSMAMXMASAMAMASXAAAMAMMMAMXSXMAXMXMAMASMSXSXSSMMSXSMMMSMSSMSMXXMAMAMASAAMXSSMSAXAA",
      "SXMSMXSXSXSAXXAMMSXXXAXXAXXSXMAMXXSMMASAMSAMAXASAMXSMSXAAAAXMXMXXXMAMSMAMMSMXMSMXSXMXMMSMMMXSAMMSAMASMMAAMMMXAAAXXAAMAMSXXMXSSMMMSMAXAASXMMX",
      "XAAAMMMAMAAXSMMMMAXSSSSSMSMMMXAXSMMMAXMAMMMXAMAMAMXMAXMMMMXMMSXMAXMMMAXAXXAMSAASMAMSAMAMAAXXXXMXMAMAMASXXMAASMMMSMSXSASXMXSAMAXXAXMXMMMMMXMX",
      "MMSMXAMAMAMAMMMMMMMXAAAXAAAASMSXSAAASMSXMASMSSSSSMXMSMAMXSAAAMXMASASAMXMMSAMSAMXMAAAMMSSSSSSSMSMSAMXSMMMMSMXXXAAAAXAMXSXAAMASAMMASASXMMMAASX",
      "MXXASXSASXMXMAMMASMMMMMMSSMMXAXASMMXXAMXMMMMAAXAAMSMASMMASXSAMMMMAMXAXXSAMXMXMXMSSSMXXMAAXMAXXAMSMMMAMAAAAMAMSMSMSMAMAXMSMSAMXSMMSAMAXAMMSMA",
      "XAMXMXAASXAXSAXSAMXAXSXMAMASMMMXMASAMMMSAMAMMSMMMMMXAAXMASAMAMASXAXSXMMMASXMAMAXXXAXMXMMMMMMMMMXXMAXASMSSMSAMXAXAXMMMMSAXMMAMAAXAMAMXSXMXAXM",
      "MXSASAMXMMMMMAMMASMSSMASMSAMAMXAMXMXMAASASMSSMMSMMMMMSMMXMMSXSASXMMSAMXSAMAXSSMMMSMMSMMAMXXAAAMSASXMMMAAAASXSMSMSMAMXMMMSXSAMSSMMSAMXMAMSMMX",
      "XAXXXMMASAAAMXMSAMXMAMAMXMMXAMSSSMMMSMMSAMASAMSAAASXMAMSSMXAAMXSXMASXMMMXSMMMAMAXAMSAMXMSMSSSSSMAMAASMMMMMMMMAAMAMAMAXMAXAMXXMAMXAXSAMAMAAMM",
      "MSSMMAMAMMSXSAXXMMASMMXSAMSXMMAXMAAAAAXMAMXMAMXSMMMAMMXAAMMMSMAMAMMXXXXAMXXMSAMMSAXSASMAAAAAXMAMAMSMMAXXMMMAMSMSMSMSXSMSMMMSMSMMSMMMAXASMSMX",
      "XXAMSAMXSAXAMXXAXSAMXMASASAASMMXXSMSSSMSAMAMAMXAMSSSMMMSXMSAXMXXAMXXMMMSSMSXMSSMMMMXAMMSMSMSMMMSMMXMSMMMSASXMMAAAAXMASAXAMXAXMXAAMSSSMASAMMS",
      "MMSMSAMSAMXAXXXMMMMSXMASMMMMMASXXMAAAAASXMAXAXMAMMAMMSMMAAMMSMMXSMSAASAAAMMAAAXXMASMAMAMXXMAAMXAMMXMAMAXMASMASXSSMSMAMAMXMMXSAMXXSAAXMAMXAAM",
      "XAMAMAMAMSSSMSMXAAAAMMXSAAXASAMMAMMMSMMMASAXSMSAMMXMASASMMMAAAASMASMSAMSMMXMMMXMSAMSAMMXXMASAMSASAXSASMSMAMMAMXXAMXMASMSMMMMXASMMMMMMXXXXMAS",
      "MMSAMSMSMAAAAAXSSMXSASAXXMSXXAAMAMMAMAMSXMMSAASMSXSMASXXXAMXSXMAMAMXXMXAAXXSASAXMAMSXSXMSAMMXMXAXMASASAAXAXMSSSSXMASXMXXAXAMSMMAXAAASMMMXSAM",
      "SAMXMXAAMXSMMMXMAXAXMAMSAMXAMSMSASMASAMXAASMMMMAMAMMXSXMMASXXXSXMASMAXMMSMASAMXMASMSASMMMAMMAMMMMXAMMMXMMMSSXAAMASXSMMAMSSXMAASAMSSSMAMAMXAA",
      "SMXAXMSXSXMAXMXSAMMSXMMMMMMSMMASMSMMSAMMMMMMAMMAMMMMXMAMXAMAMAMMSASAMXXAAMXMMMMMAMAXMMASMSMXAMAAXMXMXSAMAXMMMMMMAMXXAMASAAMMMMMXMAMMXXMXMXAM",
      "SXSAXAXAXMXSAMXXASXXXXMASAAXAMAMAXMASAMXSAMSASXMSAASAMASMAMMMMMAMASXMAMXSMMMSAAXAMAMXSSMAXMSMSSSSMSMXMASXXXMXXAMXSXMXSMSMSMXSASXMSSMAMSASAMX",
      "SASMSSMAMMAMAXMXMMMSMXMMXMSSMMSSMSMASAMXMAMSMSAAMXMSAMAXMAMAAXMSSXMXMXSAAAAASXSXMSAXAXAMAMMAAAAXAAAMXSAMXMXMASXSAXMAMMAXXMAXMAXMAMXMAMMASMMM",
      "MAMAXXXMXMASXMAMXAAAAAMXSMAXXMXMXSMAXMAMXMAMMSAMMSXSAMMSSMSSSSMAMAMXMAMAMMMXSXMAMXMSMSSMMSSMSMMMMSMSAAAMXXAMAMAMASMSAMXSMMMMMMMMAMXSSSMXMASA",
      "MAMXMSMSAMXXAAXASMSSSMSAAMAMMXAMSMAMXSASAXAXAMXMMXASXMSAXMAMAAMSMMMSMSSXXASASAMMSAMAAAMAMXXMAAAXMAMMMMXMASAMASXSASAAXXAXXAAAAAXSAMXAMMXSXMAS",
      "SASMAAAXAMASXSXMAAXAMAMXSMMSMSMSMMAMASASASMSSMASXMMMAMMSSMMSSMMXAXAXAMAMSAMASXMASXSMMMXSMMSSSSMMSXSAMXSXXAASASXMASXMSMMMSXSXSSMSMSAMXAASAMXM",
      "SASMMMSSSMAMSAASMSMMMSMMMAXAXMSAAMMSXMAMAMMAAXAXAXMXMMAXXXAAAXASMMMSMMAMMMMAMMMASXMASAMXAMAXAXAASMXMXXMAXSXMASAMXMMXAAMXMAMXAMXXMAMXMASMMMXS",
      "MXMASXXAAMXMMSMMAAAXAXXAMMMSAMSSSMAMXMXMXMMSMMSSSMSSSMXSASMSSMXSAAXAXMASAMMXSAMAMAMXMAXSAMMAMXMASASMMSASMMMMMSAMSMMSSSMAMAMAMXMAXAMAMXXMASAX",
      "SXAASMMSMMXAMAXMXMMMMXMSMSAXMAXAMMAMSSMSXSXXXAAAAAXAMAMMASXAMMASMMMXSAMMMSMASMSMXSMSAMXSMMXMMAMAMXMAASAMAXSAASXMMAAMMMXASASAXAXMSMSMAAMSXMAS",
      "SAMXSAXXMXXSXSAAASXSMSMXAMASXXMAMSAMAAAXXMASMMSSMXMMMSMMAMAMSMASXSAMAAXXAAMXMMSXAXASMSASASAMXSSMXSMMMMAMSMSXXSSMSMMSMXSMSMSMSMXAAAAMAXXAXAAA",
      "SASASXXSASXMAMMSXSAMAAAMAMMMMXSSMMMSSXMMXMXMMAAXMXMXAXXMXXMMAMXSAXMAMMMMSMSASAXSSMAMAMXSAMASAMAXMAMXXSSMMAMMMXMMAMMMMXSAMXMMAMXMMSMSASXMSSSM",
      "SAMASAMXMMAMAMMMASAMSMSSMMSAMXMASMMXMASMXMASMMSSMAMMMSSMMSASXSXMXMASMSAAAAMAMAXSXMXMXMASMSXMASAMSMMXMMMAMXMAMAAXAMAASXSXSMSMMMSMMAXMASXXAXAX",
      "MAMAMMMMXMAMXSASASAMAXAAMAMXXAMAMXSASMXSASASAAXXXXSAMXAAAMAMASXMXSAMASMSMXMSMMMSAMMMMSMXMAXSMMMMAXMAMAMXMASXSXSXSXMXMAXMSAMXSASASMSMMMXMXMMM",
      "SAMSSXSXMXMXAMXMMMAMMMSSMSSSMSMMSMXASMASXMASMMSAMXSXSSMMMSAMXMASAMAMXMAXMSAXAMASMMAAMXXSXSXSAAXXSXMXMASASAMMAXXAXMSMMSMAMAMXMASAMXMASASXSSXA",
      "XMXXAAMAMASXXMAMXMAMXAMAAXAXAAAMXAMSMMAMAMXXAAMAMAXXAMXAXSXSXSAMXSAMXMXAAMXSXMAXASXSSXXAAMASMMSMAAMXSASASXMSMMMAMAAAAAAXMMMMMMMMMMSXMASAAXSS",
      "XSSMMMMXMASAMXAMSSMMMXSMMMMMSSXMMSMMAMMSSMASMMSMAMSSMMXMASXMXMAXAXAXXXSMXXAXXASXMSAMAMMMXMAMAXAMSMMAMMMAMMXAAMMSMSMSMMSSSXMXASXMSAXXMXMMSAMX",
      "MMAXXSXMMMSAMSXMAAAMAMXXAAMXMXAAAXASAMXAAAXXSAMXASAAASXSAXAXMXXMMXSMMMXAAXXSSMXAAMXMAMAAXMAMASMXMMMXSAMSMSSSSMAAMAAAXXAXXAMSMSAMMXXAAXXSXMXS",
      "ASAMXMSMAAXAMAXMSSMMSMMSSMXAMMAMMSXSMSMSXSAMMMSMMMXSMAAXAXSMMASMMAXASMSMXSAAAXSMMMXXMSMSXSAMXMMAAMSMSXXMAMXAAMSSSMSMAMXMSAMAMSXMAMSXMAMAAXAX",
      "MMASAAASMSSSMMSMMAMAAAAAAMSASMXSASMMAXAXAAMSAXAMXAAMMMMMSMMAMAAAMMSAMAAAAXMMMMSAMXMAMAXMASXSAXSMSMAMMMXMXMSSSMMXMAMMMMSMSMSMMMAMXMAXMAASMMMS",
      "XSAMMXMMXXMXAMAMSMMXSMMSAMXAMXAMAMAXXMSMMSXSXSMAMMSXMAAAXASXMSSSMMMXMXMSMASASMSAMMAMSASMXSMMAXSAXMSMXAASMMAXAAXXMAMSXAAAXXAXASAMXMXXSAXAMAMA",
      "XMMSMXMXXMMSSMAXAXMXAXAMASXMMMXMMMSMSMXAXMAMXXXAXMAAAMMSSMMAAAAAXAMMSAMAMXSASASMMMSAXAXXASAMXMMASAMXMXASMMAMXMMXMAXXMSMSMMMSMXASMSAASMSMMAXS",
      "AMAAMSMSMAAAASASXSMMMMASAMAMASASXMAAAXXAMMSMSMSSSMSSMMAAAMSXMMSMMMSAMMXASMMAMAMXAMAMMMMMXSMMSSMMMAMASMASMSMSSSMXMSSSXAMMMSMAAMSMAMMMMAAAXSSX",
      "MMMMXAAXSAMMXAXXMMAAXMAMAMMSAXXSASMSMMMMXXXAXAAAAMAAAMASXMAAMAXAMAAMSSSMSAMMMXMXMMXXAAAXMMXAMAAXMXMAXMXMAAAXMASMAAAMSMSAAAAXXXXASXSXMSMSMMAX",
      "XAXMSMSMXXMXAMSSMSSMSMXSMMXMMMMSXMXMMSSSSMMSMMMSMMSSMMAXMMMMMASAMXSMSAAASMMXSMSMSAASXSSMMSMSSSMMSAMXMMAMXMSMSAMXMMXMAMXMSSSSMAMAMXMAAAAAAMSM",
      "SASXAAAAMSMSMXXAAMXMAXXMASXAAXXXMSXSAAAMAXAAAXMMXAMMAMAXXAAAMXSXMAXXMMMMMSMAMAAAAXMXMAXXAXAXAXXMASMASMSXXMAAMASMXXXSASMAAXAAAAMAMASAMXSSSMMS",
      "MAMXSSMSMSAAXMSMMMSMMSMMMMMSMMMAMXAMMMSXXMSSXSASMSSSSMMSSXSMSASAMXXAMXAXXXMAMSMSMXMXMAMMMMSMMMSSXAXXSAAASMMXSAMASXMSASMMMMSAMMMSSXMASXMXAXAA",
      "MAMAXMAMAMMMMAMXMASASMXAAAAAASMSMMMMXAMMMXMAMSAMAXAAAXMAMXMXMXSAMMMMMAXMAXSAMXAXXXMASAMXAAXAXAMXSMMMMMMMXAAAMASAXSAMMMMAXMXMASXAAXMAMAMMMMMS",
      "SAMXSSMMSMSXSMAMMASXMASMSMSSSMAAXAXXSAMXMAMXMMAMMMMMMXMASXMASAMAMXASAMSASMSXSAXXMXMAXXSSSSSMSASAMXAMXMXMSMMXMAMMXASXXASMMMAXAMMMMMMSSXXAMAXA",
      "SXMXMMMAAXAAASXXMAXMXMAMAMAMXMXMASXMMXMASASMMSSMXAMXXAMAXAMXMASXSSMXASXMMAMXSAXMSSMSSMXAAAAAMMMAMSMSXXAMSXXMMMSXMAMMSMSASXMMXSAAXXXMAMSASXSM",
      "SASAXMMSMSMAMAXMMSMMASMSXMSSSSSXMAAXSMSASMSAMXAXSSSSXXMSSMMMAXMAAASMSMMAMSMAMMMMAAMXAMMMMMMMMSXSMSMAMXMMMXMXXSAXMAMXAMXMMAXAXSXSXSXMAMSAMXXX",
      "SASXSXXXXAMSXSAAAAAXMSASMMXAAAAMXSMMSMMMMXXAMSXMAMAMMSAMXAXASMMMSMMXAAMXMAMMSSSMSSMSSMAMASAMXMAXAMXAAASASXSASMAMSSMSSSMXMMMSXMAXAMSMXMMMMMAA",
      "MMMMAMAXSSMXAXMMMSSMASAMAAMMMMXXAMMAXMASMXSAMXSMXMXMXXMASXMSAXXAXAXAMMMXSMSXAAMAAAMAAAXSASXSAMAMAMSSSMSAMAMXXMSMXAAAAMXSMMAMAMAMAMAXAMAAASAM",
      "XMAMAMMXXMAMMMSSMAMMXMAMXXXXAXMMSXMXMSASAXSAXAMMAMAMXMXAMAXMASMMSAMXMAMXSAMMMSMSMMASMMMMXSMXAMSXSMAXMXMXMSMSMAMMSMMMXSASAAMSXMMSXMXSMSASMSAA",
      "AMASXSXMXMAMMMMAMMSXAXXMMSSSXMASXSMSXAXMAMSXMAMMAMASAMMSSXXXAXAXAMAMXASAMASXAAXAMXMXXMXXAMXSSMXAXMMAMMSSSMAMMMMMAXXXMMAMXMXSXAXSMSAMXAMMXMMM",
      "SSMSAMMAASASAAMSMXAXMSAMAMAAMSMMMAXMASXSSMSMSAXSMSASMSAMMXSMXSSSMMAMSMMMSAMMMSXMXAXSASMMAXAXAAMMXAMMMAAMAMXMAAASAXSSSMSMAMAMMSMMAMXMSSSSSSSS",
      "MAMMAMAMXMXSXXSAAXMAMAMMASMMMMAAXXSMAMXMAASAMXMAMSAMXMASMAMAAXMAAMXMAXAAMMMAAXXXSMMSAMXSXMMSMMAMMXSXMMSSSMASMSXSAXSAMAMSMMASAXAMXMAXAAAAAAAX",
      "SAMSXMSSSMASAMMMSSXMSSSSXSAXASMSMAMMASXMMMMMMSSMMXSSXXSMMXSSMMSSMMMMASMSSSMMXSAXXSAMAMASXAXXXSASMMSAMXMAAMAXXXMMXMMAMAMAXSXMMSAMASXSMMMMMMMM",
      "SAMSMMMAAMAMAMAXAXAAAAAMXSMMXAAAMAMSASMSMXMXAXAAAAXSAXXAMXAAAAMAMXXSAMAMAMAMAXMMAAXAXMASXSMAXSXXAXSAMMMXMMMSAMSMMASXMXMMMSAAAMAMASMAXXXMASMM",
      "SAMXAAMSMMXXXMXMMSMMMMMMMMXMMMSMMMMMASAAXSAMXMXMMXXMXMSAMMSMMMSAMAXMMMAMMSAMSMXMXMXMXMXXMXMMMMMSMMSAMSSMXAXMXAAAXXMSMXAXASMMMSSMMSXMMMXMAMAX",
      "SAMSSMXMMSMSMXXSMSASXSAXASAXAAAAAXMMMMMMSAMXSASXSMXMSASMMAXAMXMMMXSASMSSXSXSAAMMMXAMMMMXSMXAAAAXXAMSMAAASMXMMSSSMSMAMSMMASXMMXXAASAMAXMMMSSM",
      "SAMXXXAXXAAAXMASAMMSASXMXSASMSXSMMXAXMAMMXXMMAAAAAAXMXSXSXMSXMMXMASAMAAMASMSASMAASMMAXAMXAMSSSSMMMMAMXXMXMASAAMMAASAMAAAAXAXMASMMXXMMMMMXAMA",
      "SMMMASXMSMSMSMXMAMXMAMASXXMMAMAMAMSSMSASMASAMMMSMSAMXAXAMSAXAMSASXMMMXMMAMAXXMXMXMASMMSAMSMMAAXMASXMSMSMMSASMSSMSMSXMMSMSSSMMASMMSMSXSASMMXM",
      "SASMAMAAAAAMAMMXAMXMAMAMMAAMXMASAMSAASASMMMAXMAXAXMASMMMMAXMAMSASXAMXSAMASMMMMAMSMAMXAMSAMXXMXMMASAXAAAAMMMSXMXMXXSMSMAXXAAMMAXAXAAMASASXSAS",
      "SAXMAXMXMSMSASXXSSMMSMSSSMMSXMAXAMMMMMXMXXXXMMXMAMXMAXAXSASXMMMAMXMMAXAXAXAXXXAXXMXMMMMXMMMMMAMMAXXMSSMMMMASASMSMXXAAXAMMMMXMXSSSMSMAMAMASAS",
      "MXMSMXSXMAAMASMMAAMAMAAAAMASMMSSXMAAAMSAMXSMSSMXMASXMMSAMAMXAAMASMSMXSAMSSSMSSMSSMMSSSMSSMSAXAMMXXSXMMMXXMASXMAASXMSMMAMXAMXSXAAXAAMXSAMAMAM",
      "SSMXXASASMSMMMAXXXMAXMMMMMXSAXMAMSSSSMSMSMSASXAASASAXAAMMXMMXXMMXAAAMMXMXAAXAAAAXXAAXAXAAAMMXMXAASMSXAAMMMMXAMXMMXMASAAXSASAMMMMMSMSMSMSXMXM",
      "XAMSMMSAMAAMXXSXAMSSSSSSSXXMAMMMMXAXMASASAMMMMSMSAMAMSSXSSSMMSSMMSMSMMASMSMMMSMMSMMSSSMMMMMSASMSMAAMMSMMAAMXSMSSMASASMMMMXMMMAAAXAAAXXAXMASM",
      "SSMSAXMMMMMMXMMSSXAAXAAAMXMASMSSMMSMMMMAMSMXAAAMMAMXAXAAXXAAASAMXXAMAXAMMAMAAXAMXMSMXXASAMXMASAAXMAMMAAMSXSAXXAAXAMASASASMXSSSSXSMSMSMMMMAMM",
      "MMASMMASXSAMXAAAMMMMMMMMMSAAXXAAXAAAAMMMMMMMMMSXSXMASXMSMSSMMMAMMMXMAMXXSAMMMXAMAMXAASMMMAMMXMASMSSMMMSMAAMMSMSMMXMXSAMASAAXMAXAAAAXSAAMXMAS",
      "XMXXSSXSMSASMMMMSAMXAXMMASMSXMMMMXXXMSASASXSMAMMAAXAXXAXAAMASXMMMXAMSSMASXSAMMSMMSSMMMXMXAXMXXXXAAAASAMMMSMMXAXMAASXMMMSMMMSAAMSMMMSXSXSXSAM",
      "XMSAXXXMASAMXAAAMMXSSXXMASMMASAXXSSMASASAXAAXXXASMMMMMXMMMSMMASMMMMMAAMAMMMASAXAAAXAAXSSSSSMSMSMMMSMMASXAMASMAMMXMXAAAXMASAXXAMXMXXSMMMMMMAS",
      "XXMXMASMXMAMSMMSMMMSMXSMMSAMAMMSAAAMXMAMAMSMMMSMAAASMMAMMMXMSMMASXMMMSMASXSAMXSMMSSXMSXAAXAAAXAAAXMXMXMMMSAMMMMSAMSSMMXSAMXSAMXSMXMXAMXMAMMM",
      "SMSMSAMXXXAMMXAXMAMXAASXMMMMXMASMSMMAMAMAMAAXAAXMXSMASXSAMAAAMMMXAXMXAMXSAMASXAAXAMXSMMMMMMXMSSSMSMAMSXXAMXMXMAXAXAXAXXMAMAXASAAMAMSSMMMMSAX",
      "AAAMMSSSMSMSXMSSMMMMMMMAXAXMXMASXXXSSSSSXSSSMSSSXSXXAMMSASMSMMAXMMMSAAMSMAMASMSMMMMMXAAMASXAXMAMAXMAMXAMXSSSSMMSSMMXMMXSXMSSMMMMSAXAAAAAXAMX",
      "MSMSAAMAAAAXMXXAMSASXSSMMSMMAMASXMASXAMMMMMMMAAAXAMMMSMSASAAASMSMSASMXMASXMAXMAXXSMASXMSASAXXAXMMMSMSMAMAAAXAAMAXAXAMSMMAAAAXXSASXMMMMMXXAXX",
      "MMAMXXMMSMSMMMMSMSASAAAXAAAXXSAMAMXMMMMMAAXAMXSSMMAAAAXMMMMMMMMAXMMSXMSXSMMSSMSMMAMXSAAMAXMXSSMSXAMXMAAMXMMMMMMMSMSXSAASMMSXMXMASAMSXSAXXMMM",
      "SMMMSMMXXMAAXAAAMMAMMMMMMSSMASAMXMASAMASXXSSSMAMAXSMSSMSXXXXAAMXMMASXAXAMXMMXMAASAMMXMMMMSMXAMAXMMSAMXSMXAXXXAXXSMAMXXMMAXMASXMAMAMAAMMXAAAA",
      "SAAAAASASXSXSMSXSMSMAXXXAAAMAMAXSSXMSMMXSAAAMAMSXMAAXMMMAMXMSMSMMSAMMMMXMAMSAMSMMASMXSXMXAMXMMMMAXMASAAMSMMMSSSMXMASMSMSAMSAMXMAXAMMSMASASMS",
      "SSMSSMMASXMASMMMXAAAXAMMMSSMAXAMMMSXXXXAMMMMMSMSMSXSMSASAMSXXAAAMMASAXAASXMMAMMXMAXAMAAMSMMAXAXXMXXAMMXMAAXXAAAXAMXMASMXMAMXSSSSSMSXAXAAXXMM",
      "MAMAAXMXMAMAMAXSMSMSMAAAAAAXSSSXXAMMXXMSXSAMMAMMASAAASXXASXAMSMMMSAMMMSXMXSSSMSSMMSSSMXMAXSXSSMMSSMSSSSSSSSMMSXMSXSMAMXSAMSMMXAXMASXMMXSMSSS",
      "MAMMAMMSMSMSMMMMXMXXAXXMSSSMXAMSMASMMMMXAXSXSASMAMMMMMSSMXMSMMAAMMMSXMMAXAXAMXAAAXAMAXXMSXMXMAMMAAXAAXXAXAAAAXAMXAXMXMAMAMXAXMSMXASMSMAMAAAA",
      "SMMXMAXAAMAXMXSMAXMXSMSMAXAXMXMXSAAXMAXMSMMMSASMSSSMSAAMSXXAAXMASAMXASMXMSXMAMXSMMASMMMMMASMSSMMXSMMSMMMMSMMXSAMMSMAMXMSAMXMMAMAMXSXAMAMMMMM",
      "AMAAXSSMXMSMMASMMSXMAAAXMSSMAMMMMSSXSXSAMASAMAMMAMAAMMSXSXSMSMXASASXMMAXSAMSASXXAXXMASMASMMAAMASAAAXMAAAAXXXASXMAAMMMAMAMSMMMSXMAXXMMSMSSMSX",
      "MMMSMMAMAMMAMAXAXSAAMSMSXAAAMAAXAXMMAMMXSAMMSAMMASMXMXMAMMMMMXMASAMAXMXMMAXSASASMMSMMASASAMMMSAMASXMSMMXSMMMASXMXSSXMXSAAAASAMAMSMAMXSXAAAAX",
      "SSMMMSAMSMSAMMSMMMXSAMXXAMXSSSMMMSSXMASXMXMXMXXSXSMSXAMAMAMASAMXSASXMMMSXMMMXMAMMAAAXMMXXAMXXMAXXAMASAMAXASMSMASAMXMMMSMSMSMAMXMAAXMASMSMMMM",
      "SAAXMMAMAASXMAAMASAMASAMSSXMXAAAAXAXXMASMAMSMSXSXMAMMAXMXXXAMAMXSAMMXXASASXSMMXMMSXSMXXMSMMMSSSMMAMASAMASXXXMSAMASAMAAXXAXMXXMSMMSSMXSAMXMAS",
      "SMMMMSXSMXMMMSASAMXSAMAMAAAMSSSMMSMMMMMMSMXAAMASXMAMSMSXSSMMSAMMMMMMMSMSAMAMAMAMXAMXAMXMAMXAAAXXSAMMSAMAMAXMMMMSAMXMMSSSSSSMSXAAXAXXAMMMAMXM",
      "MAAAASMXXSAMXAAXMAXMXSAMXSMMAXMAXAXAASAAAXSMAMAMASXXSASAAMAMSXMXAXMAAXAMMMAMSMASMASMAXXSASAMMSMMSXSMSXMASXAMAAMMASMSXMAXAAAAXSSSMXSMXSXSXMAX",
      "SMSMSSMXMASASMSMMXXMASMMXXAXXSSMSASMSSMSSMSSXMASMMXAMAMMMMAMMMSSXMXMSSXMXMASMMXSXXMMXMASXSXAXAMMXMAXMASXXAXXSSSMXXMASAMXMSMMMAXXMASMSAMXASMS"
    ]
  end
end
