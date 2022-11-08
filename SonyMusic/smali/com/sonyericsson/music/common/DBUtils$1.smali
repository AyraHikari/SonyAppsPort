.class synthetic Lcom/sonyericsson/music/common/DBUtils$1;
.super Ljava/lang/Object;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/DBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1956
    invoke-static {}, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->values()[Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->NON_HIDDEN_EDITABLE:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->NON_HIDDEN_NON_SMART:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->ALL_NON_HIDDEN:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;->ALL_INCLUDING_HIDDEN:Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1942
    :catch_3
    invoke-static {}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->values()[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

    :try_start_4
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

    sget-object v3, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 442
    :catch_5
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    :try_start_6
    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
