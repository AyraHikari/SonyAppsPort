.class final enum Lcom/sonyericsson/music/library/Page$3;
.super Lcom/sonyericsson/music/library/Page;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/library/Page;-><init>(Ljava/lang/String;IIILjava/lang/String;ILcom/sonyericsson/music/library/Page$1;)V

    return-void
.end method


# virtual methods
.method getLibraryBaseFragment(I)Lcom/sonyericsson/music/library/LibraryBaseFragment;
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-static {p1, v0}, Lcom/sonyericsson/music/library/AlbumsFragment;->newInstance(IZ)Lcom/sonyericsson/music/library/AlbumsFragment;

    move-result-object p1

    return-object p1
.end method
