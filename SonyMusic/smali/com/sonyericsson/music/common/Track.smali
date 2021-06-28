.class public Lcom/sonyericsson/music/common/Track;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Lcom/sonymobile/music/audioplayer/BasicTrack;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/Track$TrackBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sonyericsson/music/common/Track;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_DURATION:I = -0x1


# instance fields
.field private final mAlbum:Ljava/lang/String;

.field private final mAlbumId:J

.field private final mArtist:Ljava/lang/String;

.field private final mArtistId:J

.field private final mContentUri:Landroid/net/Uri;

.field private final mDataUri:Landroid/net/Uri;

.field private final mDuration:I

.field private final mId:J

.field private final mPlayqueuePosition:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/sonyericsson/music/common/Track$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/Track$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/common/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mId:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mArtistId:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbumId:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    .line 88
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mDataUri:Landroid/net/Uri;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/common/Track;->mPlayqueuePosition:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/common/Track;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/music/common/Track$1;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/common/Track;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/common/Track$TrackBuilder;)V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iget-object v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mContentUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    .line 204
    iget-object v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDataUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mDataUri:Landroid/net/Uri;

    .line 205
    iget-object v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    .line 208
    iget-wide v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mId:J

    .line 209
    iget-wide v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mAlbumId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbumId:J

    .line 210
    iget-wide v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mArtistId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mArtistId:J

    .line 211
    iget v0, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mDuration:I

    iput v0, p0, Lcom/sonyericsson/music/common/Track;->mDuration:I

    .line 212
    iget p1, p1, Lcom/sonyericsson/music/common/Track$TrackBuilder;->mPlayqueuePosition:I

    iput p1, p0, Lcom/sonyericsson/music/common/Track;->mPlayqueuePosition:I

    return-void
.end method

.method public static isCloudFile(Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    .line 319
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static isTrackMediaStoreContent(Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    .line 315
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z
    .locals 0

    .line 326
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;
    .locals 3

    .line 190
    new-instance v0, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->album(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artist(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->trackId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->albumId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artistId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equalMetadata(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 299
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 302
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/common/Track;

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    if-nez v1, :cond_6

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    .line 305
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_5
    iget-object v3, p1, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    .line 306
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget v1, p0, Lcom/sonyericsson/music/common/Track;->mDuration:I

    iget p1, p1, Lcom/sonyericsson/music/common/Track;->mDuration:I

    if-ne v1, p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .line 256
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbumId:J

    return-wide v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mArtistId:J

    return-wide v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/sonyericsson/music/common/Track;->mDuration:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mId:J

    return-wide v0
.end method

.method public getPlayqueuePosition()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/sonyericsson/music/common/Track;->mPlayqueuePosition:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 273
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/music/audioplayer/BasicTrack;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v1

    if-eqz p2, :cond_2

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {p1}, Lcom/sonymobile/music/audioplayer/BasicTrack;->getPlayqueuePosition()I

    move-result p1

    iget p2, p0, Lcom/sonyericsson/music/common/Track;->mPlayqueuePosition:I

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public isSame(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mArtistId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-wide v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/music/common/Track;->mDataUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    iget p2, p0, Lcom/sonyericsson/music/common/Track;->mPlayqueuePosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/sonyericsson/music/common/Track;->mDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
