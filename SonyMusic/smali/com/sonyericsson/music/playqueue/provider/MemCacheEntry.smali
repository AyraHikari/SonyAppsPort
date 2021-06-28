.class Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;
.super Ljava/lang/Object;
.source "MemCacheEntry.java"


# static fields
.field static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final sPlayOrderComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAlbum:Ljava/lang/String;

.field mAlbumId:J

.field mArtist:Ljava/lang/String;

.field mArtistId:J

.field mAvailable:Z

.field mBackupPlayOrder:I

.field mData:Ljava/lang/String;

.field mDuration:J

.field mHDAudio:Z

.field mId:J

.field mPlayOrder:I

.field mTitle:Ljava/lang/String;

.field mTrackUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$1;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sPlayOrderComparator:Ljava/util/Comparator;

    .line 51
    new-instance v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$2;

    invoke-direct {v0}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry$2;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->sIdComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    iput v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    .line 64
    iget-object v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    .line 65
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    iput-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    .line 66
    iget-object v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    .line 68
    iget-object v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    .line 69
    iget-object v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    .line 70
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 71
    iget v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    iput v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    .line 72
    iget-boolean v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    iput-boolean v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    .line 73
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    .line 74
    iget-wide v0, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    iput-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    .line 75
    iget-boolean p1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    iput-boolean p1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 89
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 91
    iget-boolean v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    iget-boolean v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    if-ne v1, v3, :cond_7

    iget-boolean v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    iget-boolean v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    if-ne v1, v3, :cond_7

    iget-object v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-wide v3, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    iget-wide v5, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-wide v3, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    iget-wide v5, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    iget v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    if-ne v1, v3, :cond_7

    iget-object v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    iget-wide v3, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    iget-wide v5, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    iget v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    if-ne v1, v3, :cond_7

    iget-wide v3, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    iget-wide v5, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    if-nez p1, :cond_7

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    long-to-int v0, v0

    return v0
.end method
