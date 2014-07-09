# == Schema Information
#
# Table name: meshblocks
#
#  id                                     :integer          not null, primary key
#  area_unit_id                           :integer
#  urban_authority_id                     :integer
#  territorial_authority_id               :integer
#  ward_id                                :integer
#  community_board_id                     :integer
#  territorial_authority_subdivision_id   :integer
#  regional_council_id                    :integer
#  regional_council_constituency_id       :integer
#  regional_council_maori_constituency_id :integer
#  land_type_id                           :integer
#  shape_length                           :decimal(, )
#  shape_area                             :decimal(, )
#  shape                                  :spatial          geometry, 0
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meshblock do
    area_unit
    urban_area
    ward
    community_board
    shape RGeo::GeoJSON.decode('{ "type": "Polygon", "coordinates": [ [ [ 176.147062633227392, -37.709965966502281 ], [ 176.147102266708742, -37.709998600068324 ], [ 176.147388450165124, -37.710235249874628 ], [ 176.147475950255739, -37.710307549720703 ], [ 176.147600533239086, -37.71041049994475 ], [ 176.147725099985024, -37.71051343334252 ], [ 176.147730933197295, -37.710518333358735 ], [ 176.147534333265099, -37.710667849927553 ], [ 176.147005033156489, -37.711070516607691 ], [ 176.147332299927797, -37.711341783105063 ], [ 176.14760909984426, -37.711571233135516 ], [ 176.147768333159576, -37.711703333073487 ], [ 176.147899233417633, -37.712223366658698 ], [ 176.148136650328325, -37.712476766504238 ], [ 176.148166649896041, -37.712667583417961 ], [ 176.148169916720718, -37.712873650041075 ], [ 176.148122300252282, -37.713229899778248 ], [ 176.148175933153908, -37.713263216516197 ], [ 176.148342616734794, -37.713333400042288 ], [ 176.14858254997165, -37.713434366731363 ], [ 176.148785816609234, -37.713519949848461 ], [ 176.149234350285155, -37.713708733033116 ], [ 176.149246316751658, -37.71370533305155 ], [ 176.149460199856776, -37.713644866472592 ], [ 176.1496787668639, -37.713583066478336 ], [ 176.149726866750768, -37.713526333384024 ], [ 176.14974878329835, -37.713500749818024 ], [ 176.149796366614879, -37.713445866722857 ], [ 176.149867466727358, -37.713362766439367 ], [ 176.149972683213775, -37.71323996661495 ], [ 176.149999750289965, -37.71320833342952 ], [ 176.150031300282421, -37.713171500119032 ], [ 176.15013864990533, -37.713025933239585 ], [ 176.150152416850318, -37.713007349753205 ], [ 176.150303249893597, -37.712802500139958 ], [ 176.15207749987843, -37.713293733305605 ], [ 176.152134366808895, -37.713309450049508 ], [ 176.152207866668277, -37.713359066836581 ], [ 176.151796316674989, -37.713773166611531 ], [ 176.151407849923743, -37.714152466607601 ], [ 176.151288533405165, -37.71427049984311 ], [ 176.150657550109685, -37.714900983340641 ], [ 176.150532350282361, -37.71502583332019 ], [ 176.15010144986266, -37.715479816849232 ], [ 176.149658999805297, -37.715937516616115 ], [ 176.14963785021979, -37.715952416462294 ], [ 176.149515767027793, -37.716038599935878 ], [ 176.149047399997869, -37.716354500108451 ], [ 176.148890499811813, -37.716460566574803 ], [ 176.146834566754819, -37.71789626668577 ], [ 176.146766333398404, -37.718050866783507 ], [ 176.146531933575034, -37.718582966440714 ], [ 176.146459949996085, -37.718188549953616 ], [ 176.146400333591401, -37.717474533100372 ], [ 176.145754300230834, -37.716976750053611 ], [ 176.145356883537687, -37.716675833320593 ], [ 176.144595233107054, -37.716096899852509 ], [ 176.144574867023181, -37.715672016654487 ], [ 176.14453083316036, -37.715555983452489 ], [ 176.144516583124471, -37.715435983140686 ], [ 176.144490416579941, -37.715336766493081 ], [ 176.144326633575616, -37.715158466492539 ], [ 176.143750516484829, -37.714878066432824 ], [ 176.143313883090656, -37.714318299911874 ], [ 176.143339616708715, -37.714299283411563 ], [ 176.143496200158182, -37.714180783293116 ], [ 176.143931516716691, -37.713846533048951 ], [ 176.14380903331417, -37.713755749833474 ], [ 176.143073883588215, -37.713065833240137 ], [ 176.142874000343028, -37.713040766625774 ], [ 176.145617183289261, -37.71094373346957 ], [ 176.146547316831487, -37.710227566613497 ], [ 176.1469705168075, -37.709897733296259 ], [ 176.147062633227392, -37.709965966502281 ] ] ] }', json_parser: :json)
  end
end
