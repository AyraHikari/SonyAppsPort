.class public Lcom/sonyericsson/music/common/MenuUtils$GenreData;
.super Ljava/lang/Object;
.source "MenuUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/common/MenuUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenreData"
.end annotation


# instance fields
.field private final mArtUri:Landroid/net/Uri;

.field private final mGenreId:J

.field private final mGenreName:Ljava/lang/String;

.field private final mTrackCount:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/net/Uri;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-wide p1, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mGenreId:J

    .line 152
    iput-object p3, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mGenreName:Ljava/lang/String;

    .line 153
    iput p4, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mTrackCount:I

    .line 154
    iput-object p5, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mArtUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getArtUri()Landroid/net/Uri;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mArtUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getGenreId()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mGenreId:J

    return-wide v0
.end method

.method public getGenreName()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mGenreName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/sonyericsson/music/common/MenuUtils$GenreData;->mTrackCount:I

    return v0
.end method
