.class Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;
.super Ljava/lang/Object;
.source "AlbumTracksAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/AlbumTracksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/AlbumTracksAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/AlbumTracksAdapter;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/music/library/AlbumTracksAdapter$1;->this$0:Lcom/sonyericsson/music/library/AlbumTracksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    return-void
.end method
