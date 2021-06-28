.class synthetic Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;
.super Ljava/lang/Object;
.source "LandingPageCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/landingpage/LandingPageCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 338
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 187
    :catch_3
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->values()[Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    :try_start_4
    sget-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v5, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ALBUM:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v5, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->ARTIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v5, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->FOLDER:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v4, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->PLAYLIST:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_RECENTLY_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_MOST_PLAYED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_NEWLY_ADDED:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->SMART_PLAYLIST_FAVORITES:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->TRACK:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x9

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->GENRE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xa

    aput v4, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageCategoryAdapter$CategoryItemType:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;->NONE:Lcom/sonyericsson/music/landingpage/LandingPageCategoryAdapter$CategoryItemType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0xb

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 88
    :catch_e
    invoke-static {}, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->values()[Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I

    :try_start_f
    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I

    sget-object v3, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->ON_DESTROY_VIEW:Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/sonyericsson/music/landingpage/LandingPageCategory$1;->$SwitchMap$com$sonyericsson$music$landingpage$LandingPageFragmentLifecycleStateChange$LifecycleState:[I

    sget-object v2, Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;->ON_SAVE_INSTANCE_STATE:Lcom/sonyericsson/music/landingpage/LandingPageFragmentLifecycleStateChange$LifecycleState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    return-void
.end method
