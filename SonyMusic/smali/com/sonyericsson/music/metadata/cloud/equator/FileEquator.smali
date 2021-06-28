.class public Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;
.super Ljava/lang/Object;
.source "FileEquator.java"


# instance fields
.field private final mFileIdA:Ljava/lang/String;

.field private final mFileIdB:Ljava/lang/String;

.field private final mParentsA:[Ljava/lang/String;

.field private final mParentsB:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mFileIdA:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mFileIdB:Ljava/lang/String;

    .line 27
    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsA:[Ljava/lang/String;

    .line 28
    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsB:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mFileIdA:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mFileIdB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsA:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsB:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsA:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/cloud/equator/FileEquator;->mParentsB:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
