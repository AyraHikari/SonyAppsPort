.class Lcom/sonyericsson/music/library/PlaylistsFragment$2;
.super Ljava/lang/Object;
.source "PlaylistsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/library/PlaylistsFragment;->update()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/PlaylistsFragment;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$2;->this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 266
    iget-object p1, p0, Lcom/sonyericsson/music/library/PlaylistsFragment$2;->this$0:Lcom/sonyericsson/music/library/PlaylistsFragment;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/library/PlaylistsFragment;->access$100(Lcom/sonyericsson/music/library/PlaylistsFragment;ZZ)V

    return-void
.end method
