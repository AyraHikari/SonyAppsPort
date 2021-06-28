.class public Lcom/sonyericsson/music/search/SearchItem;
.super Ljava/lang/Object;
.source "SearchItem.java"


# instance fields
.field private final mAlbumName:Ljava/lang/String;

.field private final mArtUri:Landroid/net/Uri;

.field private final mArtistName:Ljava/lang/String;

.field private final mContentId:J

.field private final mPriority:I

.field private final mSource:Lcom/sonyericsson/music/search/SearchConstants$Source;

.field private final mTrackName:Ljava/lang/String;

.field private final mType:Lcom/sonyericsson/music/search/SearchConstants$Type;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/search/SearchConstants$Type;Lcom/sonyericsson/music/search/SearchConstants$Source;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchItem;->mType:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 34
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchItem;->mSource:Lcom/sonyericsson/music/search/SearchConstants$Source;

    .line 35
    iput-wide p3, p0, Lcom/sonyericsson/music/search/SearchItem;->mContentId:J

    .line 36
    iput-object p5, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtUri:Landroid/net/Uri;

    .line 37
    iput-object p6, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtistName:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/sonyericsson/music/search/SearchItem;->mAlbumName:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/sonyericsson/music/search/SearchItem;->mTrackName:Ljava/lang/String;

    .line 40
    iput p9, p0, Lcom/sonyericsson/music/search/SearchItem;->mPriority:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/search/SearchItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 85
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/search/SearchItem;

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mType:Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getType()Lcom/sonyericsson/music/search/SearchConstants$Type;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/sonyericsson/music/search/SearchItem;->mContentId:J

    invoke-virtual {p1}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getAlbumName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method getArtUri()Landroid/net/Uri;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method getArtistName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method getContentId()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mContentId:J

    return-wide v0
.end method

.method getPriority()Ljava/lang/Integer;
    .locals 1

    .line 72
    iget v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mPriority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method getSource()Lcom/sonyericsson/music/search/SearchConstants$Source;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mSource:Lcom/sonyericsson/music/search/SearchConstants$Source;

    return-object v0
.end method

.method getTrackName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mTrackName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Lcom/sonyericsson/music/search/SearchConstants$Type;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mType:Lcom/sonyericsson/music/search/SearchConstants$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mType:Lcom/sonyericsson/music/search/SearchConstants$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchItem;->mSource:Lcom/sonyericsson/music/search/SearchConstants$Source;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sonyericsson/music/search/SearchItem;->getContentId()J

    move-result-wide v4

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { contentId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mContentId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " searchType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mType:Lcom/sonyericsson/music/search/SearchConstants$Type;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mSource:Lcom/sonyericsson/music/search/SearchConstants$Source;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " artist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " album:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " track:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mTrackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " artUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchItem;->mArtUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
