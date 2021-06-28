.class public Lcom/sonyericsson/music/common/MenuUtils$ArtistData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArtistData"
.end annotation


# instance fields
.field private final mArtistArtUri:Ljava/lang/String;

.field private final mArtistName:Ljava/lang/String;

.field private final mId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-wide p1, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mId:J

    .line 243
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mArtistName:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mArtistArtUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArtistArtUri()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mArtistArtUri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/sonyericsson/music/common/MenuUtils$ArtistData;->mId:J

    return-wide v0
.end method
