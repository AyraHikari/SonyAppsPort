.class Lcom/sonyericsson/music/metadata/EditMusicInfo;
.super Ljava/lang/Object;
.source "EditMusicInfo.java"


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArt:Ljava/io/File;

.field private mAlbumArtChanged:Z

.field private mAlbumId:J

.field private mArtist:Ljava/lang/String;

.field private mArtistArt:Ljava/io/File;

.field private mArtistArtChanged:Z

.field private mArtistId:J

.field private mDiscNbr:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mGenres:[Ljava/lang/String;

.field private mHasAlbumChanged:Z

.field private mHasArtistChanged:Z

.field private mHasDiscNbrChanged:Z

.field private mHasEmbeddedAlbumArt:Z

.field private mHasGenreChanged:Z

.field private mHasRemovableAlbumArt:Z

.field private mHasTitleChanged:Z

.field private mHasTrackNbrChanged:Z

.field private mHasYearChanged:Z

.field private mOriginalArtist:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrackNbr:Ljava/lang/String;

.field private mYear:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistId:J

    .line 20
    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumId:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasEmbeddedAlbumArt:Z

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    .line 40
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasRemovableAlbumArt:Z

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfo;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistId:J

    .line 20
    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumId:J

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasEmbeddedAlbumArt:Z

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    .line 34
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    .line 35
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    .line 36
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    .line 40
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    .line 42
    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasRemovableAlbumArt:Z

    .line 48
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTitle:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtist:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArt:Ljava/io/File;

    .line 51
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistId:J

    .line 52
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbum:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumId:J

    .line 54
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mYear:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getTrackNbr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTrackNbr:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getDiscNbr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mDiscNbr:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getAlbumArt()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArt:Ljava/io/File;

    .line 58
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasEmbeddedAlbumArt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasEmbeddedAlbumArt:Z

    .line 59
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mFilePath:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isTitleChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    .line 61
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    .line 62
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    .line 63
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isYearChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    .line 64
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isTrackNbrChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    .line 65
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isDiscNbrChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    .line 66
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isGenreChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    .line 67
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isAlbumArtChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    .line 68
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->isArtistArtChanged()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    .line 69
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasRemovableAlbumArt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasRemovableAlbumArt:Z

    .line 70
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getOriginalArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mOriginalArtist:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getGenres()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mGenres:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getAlbum()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method getAlbumArt()Ljava/io/File;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArt:Ljava/io/File;

    return-object v0
.end method

.method getAlbumId()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumId:J

    return-wide v0
.end method

.method getArtist()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method getArtistArt()Ljava/io/File;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArt:Ljava/io/File;

    return-object v0
.end method

.method getArtistId()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistId:J

    return-wide v0
.end method

.method getDiscNbr()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mDiscNbr:Ljava/lang/String;

    return-object v0
.end method

.method getFilePath()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGenres()[Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mGenres:[Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalArtist()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mOriginalArtist:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getTrackNbr()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTrackNbr:Ljava/lang/String;

    return-object v0
.end method

.method getYear()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mYear:Ljava/lang/String;

    return-object v0
.end method

.method hasChanged()Z
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method hasEmbeddedAlbumArt()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasEmbeddedAlbumArt:Z

    return v0
.end method

.method public hasRemovableAlbumArt()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasRemovableAlbumArt:Z

    return v0
.end method

.method isAlbumArtChanged()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    return v0
.end method

.method public isAlbumChanged()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    return v0
.end method

.method isArtistArtChanged()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    return v0
.end method

.method public isArtistChanged()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    return v0
.end method

.method public isDiscNbrChanged()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    return v0
.end method

.method public isGenreChanged()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    return v0
.end method

.method public isTitleChanged()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    return v0
.end method

.method public isTrackNbrChanged()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    return v0
.end method

.method public isYearChanged()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    return v0
.end method

.method setAlbum(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbum:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method setAlbumArt(Ljava/io/File;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArt:Ljava/io/File;

    return-void
.end method

.method setAlbumArtChanged(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumArtChanged:Z

    return-void
.end method

.method public setAlbumChanged(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasAlbumChanged:Z

    return-void
.end method

.method setAlbumId(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mAlbumId:J

    return-void
.end method

.method setArtist(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtist:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method setArtistArt(Ljava/io/File;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArt:Ljava/io/File;

    return-void
.end method

.method setArtistArtChanged(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistArtChanged:Z

    return-void
.end method

.method public setArtistChanged(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasArtistChanged:Z

    return-void
.end method

.method setArtistId(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mArtistId:J

    return-void
.end method

.method setDiscNbr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mDiscNbr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setDiscNbrChanged(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasDiscNbrChanged:Z

    return-void
.end method

.method setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public varargs setGenres([Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mGenres:[Ljava/lang/String;

    return-void
.end method

.method public setGenresChanged(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasGenreChanged:Z

    return-void
.end method

.method setHasEmbeddedAlbumArt(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasEmbeddedAlbumArt:Z

    return-void
.end method

.method public setHasRemovableAlbumArt(Z)V
    .locals 0

    .line 203
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasRemovableAlbumArt:Z

    return-void
.end method

.method public setOriginalArtist(Ljava/lang/String;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mOriginalArtist:Ljava/lang/String;

    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTitle:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTitleChanged(Z)V
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTitleChanged:Z

    return-void
.end method

.method setTrackNbr(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mTrackNbr:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setTrackNbrChanged(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasTrackNbrChanged:Z

    return-void
.end method

.method setYear(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mYear:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setYearChanged(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfo;->mHasYearChanged:Z

    return-void
.end method
