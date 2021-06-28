.class public Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistData"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mMediaStorePlaylistId:I

.field private final mModifiedDate:J

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTracksUri:Landroid/net/Uri;

.field private final mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 192
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mTracksUri:Landroid/net/Uri;

    .line 193
    iput-object p4, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mName:Ljava/lang/String;

    .line 194
    iput-object p2, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mPath:Ljava/lang/String;

    .line 195
    iput-wide p5, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mModifiedDate:J

    .line 196
    iput-object p7, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mId:Ljava/lang/String;

    .line 197
    iput p8, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mMediaStorePlaylistId:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaStorePlaylistId()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mMediaStorePlaylistId:I

    return v0
.end method

.method public getModifiedDate()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mModifiedDate:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistPath()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaylistUri()Landroid/net/Uri;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getTracksUri()Landroid/net/Uri;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mTracksUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$PlaylistData;->mType:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    return-object v0
.end method
