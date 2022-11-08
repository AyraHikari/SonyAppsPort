.class public final enum Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;
.super Ljava/lang/Enum;
.source "FilterQueryParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_EXCLUDE_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_IS_MUSIC:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_MEMBER_EXCLUDE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_MEMBER_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PLAYLIST_NAME_LIKE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

.field public static final enum FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;


# instance fields
.field private final mIsInclusive:Z

.field private final mMediaStoreColumnName:Ljava/lang/String;

.field private final mMusicInfoColumnName:Ljava/lang/String;

.field private final mParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 136
    new-instance v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v1, "FILTER_PLAYLIST_IDS"

    const-string v3, "playlist_ids"

    const-string v4, "_id"

    const-string v5, "_id"

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 141
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_AUDIO_IDS"

    const-string v11, "audio_ids"

    const-string v13, "audio_id"

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 146
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_MEMBER_IDS"

    const-string v4, "member_ids"

    const-string v6, "_id"

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 151
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_MEMBER_EXCLUDE_IDS"

    const-string v11, "exclude_audio_ids"

    const-string v13, "_id"

    const/4 v10, 0x3

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_EXCLUDE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 156
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_IS_MUSIC"

    const-string v4, "is_music"

    const-string v6, "is_music"

    const/4 v3, 0x4

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_MUSIC:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 161
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_PLAYLIST_NAME"

    const-string v11, "name"

    const-string v12, "name"

    const-string v13, "name"

    const/4 v10, 0x5

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 166
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_EXCLUDE_NAME"

    const-string v4, "exclude_name"

    const-string v5, "name"

    const-string v6, "name"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_EXCLUDE_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 171
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_PLAYLIST_SET"

    const-string v11, "playlist_set"

    const/4 v10, 0x7

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 176
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_PLAYLIST_TYPE"

    const-string v4, "playlist_type"

    const-string v5, "smart_playlist_type"

    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 181
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_IS_HIDDEN"

    const-string v11, "is_hidden"

    const-string v12, "is_hidden"

    const/16 v10, 0x9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 186
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_PATH"

    const-string v4, "path"

    const-string v5, "path"

    const-string v6, "_data"

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 191
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_MEDIASTORE_IDS"

    const-string v11, "mediastore_id"

    const-string v12, "mediastore_id"

    const-string v13, "_id"

    const/16 v10, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 196
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_PLAYLIST_NAME_LIKE"

    const-string v4, "name_like"

    const-string v5, "name"

    const-string v6, "name"

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME_LIKE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 201
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v9, "FILTER_DATE_ADDED"

    const-string v11, "date_added"

    const-string v12, "date_created"

    const-string v13, "date_added"

    const/16 v10, 0xd

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 206
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const-string v2, "FILTER_DATE_MODIFIED"

    const-string v4, "date_modified"

    const-string v5, "date_updated"

    const-string v6, "date_modified"

    const/16 v3, 0xe

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v0, 0xf

    .line 135
    new-array v0, v0, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_AUDIO_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEMBER_EXCLUDE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_MUSIC:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_EXCLUDE_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME_LIKE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 218
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mParam:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mMusicInfoColumnName:Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mMediaStoreColumnName:Ljava/lang/String;

    .line 221
    iput-boolean p6, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mIsInclusive:Z

    return-void
.end method

.method public static getFilterType(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;
    .locals 5

    .line 241
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->values()[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;
    .locals 1

    .line 135
    const-class v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;
    .locals 1

    .line 135
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->$VALUES:[Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    return-object v0
.end method


# virtual methods
.method public getMediaStoreColumnName()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mMediaStoreColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicInfoColumnName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mMusicInfoColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mParam:Ljava/lang/String;

    return-object v0
.end method

.method isInclusive()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->mIsInclusive:Z

    return v0
.end method
