.class synthetic Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;
.super Ljava/lang/Object;
.source "QuickPlaySelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/QuickPlaySelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 358
    invoke-static {}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->values()[Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v3, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v4, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v5, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v5, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v5, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    sget-object v5, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x7

    aput v6, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 137
    :catch_6
    invoke-static {}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->values()[Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    :try_start_7
    sget-object v4, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
