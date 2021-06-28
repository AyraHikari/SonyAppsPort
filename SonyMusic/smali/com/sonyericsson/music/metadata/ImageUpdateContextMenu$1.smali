.class Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;
.super Ljava/lang/Object;
.source "ImageUpdateContextMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

.field final synthetic val$imageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->this$0:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    iput-object p2, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->val$imageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->this$0:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->this$0:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->access$000(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->this$0:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->access$100(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;->val$imageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-interface {v0, p2, v1}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;->onActionSelected(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    .line 101
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 92
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
