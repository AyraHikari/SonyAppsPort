.class public Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;
.super Landroid/database/AbstractCursor;
.source "PlayqueueCursor.java"


# instance fields
.field private final mColumns:[Ljava/lang/String;

.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    if-nez p2, :cond_0

    const/16 p1, 0xd

    .line 31
    new-array p2, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v0, "_id"

    aput-object v0, p2, p1

    const/4 p1, 0x1

    const-string v0, "album"

    aput-object v0, p2, p1

    const/4 p1, 0x2

    const-string v0, "artist"

    aput-object v0, p2, p1

    const/4 p1, 0x3

    const-string v0, "duration"

    aput-object v0, p2, p1

    const/4 p1, 0x4

    const-string v0, "play_order"

    aput-object v0, p2, p1

    const/4 p1, 0x5

    const-string v0, "title"

    aput-object v0, p2, p1

    const/4 p1, 0x6

    const-string v0, "_data"

    aput-object v0, p2, p1

    const/4 p1, 0x7

    const-string v0, "track_uri"

    aput-object v0, p2, p1

    const/16 p1, 0x8

    const-string v0, "available"

    aput-object v0, p2, p1

    const/16 p1, 0x9

    const-string v0, "mime_type"

    aput-object v0, p2, p1

    const/16 p1, 0xa

    const-string v0, "album_id"

    aput-object v0, p2, p1

    const/16 p1, 0xb

    const-string v0, "artist_id"

    aput-object v0, p2, p1

    const/16 p1, 0xc

    const-string v0, "hd_audio"

    aput-object v0, p2, p1

    .line 47
    :cond_0
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    if-eqz p1, :cond_1

    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter data not allowed to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 0

    .line 141
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getFloat(I)F
    .locals 0

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getInt(I)I
    .locals 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->getLong(I)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getLong(I)J
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    const-string v1, "duration"

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-wide v0, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    return-wide v0

    :cond_0
    const-string v1, "_id"

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-wide v0, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    return-wide v0

    :cond_1
    const-string v1, "play_order"

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    int-to-long v0, p1

    return-wide v0

    :cond_2
    const-string v1, "backup_play_order"

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    iget p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    int-to-long v0, p1

    return-wide v0

    :cond_3
    const-string v1, "available"

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_5

    .line 122
    iget-boolean p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_5
    const-string v1, "album_id"

    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 124
    iget-wide v0, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    return-wide v0

    :cond_6
    const-string v1, "artist_id"

    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 126
    iget-wide v0, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    return-wide v0

    :cond_7
    const-string v1, "hd_audio"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 128
    iget-boolean p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move-wide v2, v4

    :goto_1
    return-wide v2

    .line 130
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getShort(I)S
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    const-string v1, "artist"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v1, "album"

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v1, "title"

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v1, "_data"

    .line 80
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string v1, "track_uri"

    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    return-object p1

    :cond_4
    const-string v1, "_id"

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "mime_type"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 93
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getType(I)I
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    aget-object p1, v0, p1

    const-string v0, "play_order"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "artist"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "album"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const-string v0, "title"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string v0, "_data"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    const-string v0, "track_uri"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "duration"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "mime_type"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    :cond_7
    const-string v0, "_id"

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const-string v0, "album_id"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, "artist_id"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string v0, "available"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-string v0, "hd_audio"

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v1

    .line 205
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public isNull(I)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mColumns:[Ljava/lang/String;

    aget-object p1, v0, p1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueCursor;->mData:Ljava/util/List;

    iget v1, p0, Landroid/database/AbstractCursor;->mPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    const-string v1, "play_order"

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "artist"

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 152
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    const-string v1, "album"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    const-string v1, "title"

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    const-string v1, "_data"

    .line 157
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 158
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    const-string v1, "track_uri"

    .line 159
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 160
    iget-object p1, v0, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    if-eqz p1, :cond_9

    const/4 v2, 0x1

    :cond_9
    return v2

    :cond_a
    const-string v0, "duration"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2

    :cond_b
    const-string v0, "mime_type"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v3

    :cond_c
    const-string v0, "hd_audio"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v2

    .line 170
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public requery()Z
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Requery not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
