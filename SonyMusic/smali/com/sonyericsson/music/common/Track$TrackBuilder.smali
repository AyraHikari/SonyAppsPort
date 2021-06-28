.class public Lcom/sonyericsson/music/common/Track$TrackBuilder;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackBuilder"
.end annotation


# instance fields
.field mAlbum:Ljava/lang/String;

.field mAlbumId:J

.field mArtist:Ljava/lang/String;

.field mArtistId:J

.field final mContentUri:Landroid/net/Uri;

.field mDataUri:Landroid/net/Uri;

.field mDuration:I

.field mId:J

.field mPlayqueuePosition:I

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDataUri:Landroid/net/Uri;

    const-wide/16 v1, -0x1

    .line 119
    iput-wide v1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mId:J

    .line 121
    iput-wide v1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbumId:J

    .line 123
    iput-wide v1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtistId:J

    const/4 v1, -0x1

    .line 125
    iput v1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDuration:I

    .line 127
    iput-object v0, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mTitle:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbum:Ljava/lang/String;

    .line 131
    iput-object v0, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtist:Ljava/lang/String;

    const/4 v0, 0x0

    .line 133
    iput v0, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mPlayqueuePosition:I

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mContentUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public album(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbum:Ljava/lang/String;

    return-object p0
.end method

.method public albumId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 170
    iput-wide p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbumId:J

    return-object p0
.end method

.method public artist(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtist:Ljava/lang/String;

    return-object p0
.end method

.method public artistId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 175
    iput-wide p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtistId:J

    return-object p0
.end method

.method public build()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 185
    new-instance v0, Lcom/sonyericsson/music/common/Track;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/common/Track;-><init>(Lcom/sonyericsson/music/common/Track$TrackBuilder;)V

    return-object v0
.end method

.method public dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method public duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 160
    iput p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDuration:I

    return-object p0
.end method

.method public playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 180
    iput p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mPlayqueuePosition:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public trackId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mId:J

    return-object p0
.end method
