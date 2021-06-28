.class final Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;
.super Ljava/lang/Object;
.source "PackageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfo"
.end annotation


# instance fields
.field final checkStoragePermission:Z

.field final fullLibraryBrowseAllowed:Z

.field final name:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field final release:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->name:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->packageName:Ljava/lang/String;

    .line 255
    iput-boolean p3, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->release:Z

    .line 256
    iput-boolean p4, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->checkStoragePermission:Z

    .line 257
    iput-boolean p5, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerInfo;->fullLibraryBrowseAllowed:Z

    return-void
.end method
