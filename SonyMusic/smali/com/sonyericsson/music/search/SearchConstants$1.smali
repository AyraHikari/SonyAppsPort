.class synthetic Lcom/sonyericsson/music/search/SearchConstants$1;
.super Ljava/lang/Object;
.source "SearchConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Source:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$search$SearchConstants$Source:[I

.field static final synthetic $SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Source:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Source:[I

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Source;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    invoke-static {}, Lcom/sonyericsson/music/search/SearchConstants$Source;->values()[Lcom/sonyericsson/music/search/SearchConstants$Source;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Source:[I

    :try_start_1
    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Source:[I

    sget-object v2, Lcom/sonyericsson/music/search/SearchConstants$Source;->MEDIA_STORE:Lcom/sonyericsson/music/search/SearchConstants$Source;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :catch_1
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->values()[Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

    :try_start_2
    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ARTIST:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v1, 0x2

    :try_start_3
    sget-object v2, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$metadata$provider$MusicInfoStore$SearchHistoryTable$Type:[I

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 81
    :catch_4
    invoke-static {}, Lcom/sonyericsson/music/search/SearchConstants$Type;->values()[Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    :try_start_5
    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    sget-object v4, Lcom/sonyericsson/music/search/SearchConstants$Type;->ARTIST:Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    sget-object v3, Lcom/sonyericsson/music/search/SearchConstants$Type;->ALBUM:Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/sonyericsson/music/search/SearchConstants$1;->$SwitchMap$com$sonyericsson$music$search$SearchConstants$Type:[I

    sget-object v1, Lcom/sonyericsson/music/search/SearchConstants$Type;->TRACK:Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
