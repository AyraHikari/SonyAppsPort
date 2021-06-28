.class final Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;
.super Ljava/lang/Object;
.source "PackageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallerAllowanceInfo"
.end annotation


# instance fields
.field final fullLibraryBrowseAllowed:Z

.field final usageAllowed:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->usageAllowed:Z

    .line 267
    iput-boolean p2, p0, Lcom/sonyericsson/music/proxyservice/mediabrowser/PackageValidator$CallerAllowanceInfo;->fullLibraryBrowseAllowed:Z

    return-void
.end method
