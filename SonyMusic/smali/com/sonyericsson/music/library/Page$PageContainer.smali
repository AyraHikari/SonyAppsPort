.class public Lcom/sonyericsson/music/library/Page$PageContainer;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageContainer"
.end annotation


# instance fields
.field public mIsEnabled:Z

.field public final mPage:Lcom/sonyericsson/music/library/Page;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/Page;Z)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/sonyericsson/music/library/Page$PageContainer;->mPage:Lcom/sonyericsson/music/library/Page;

    .line 217
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    return-void
.end method
