.class Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;
.super Ljava/lang/Object;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedPageContainer"
.end annotation


# instance fields
.field final mIsEnabled:Z

.field final mPageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;->mPageName:Ljava/lang/String;

    .line 231
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;->mIsEnabled:Z

    return-void
.end method
