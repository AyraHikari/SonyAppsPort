.class public Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;
.super Ljava/lang/Object;
.source "EditMusicInfoBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImageClickListener"
.end annotation


# instance fields
.field private mImageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

.field final synthetic this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->mImageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 729
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object p1, p1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-static {p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object p1, p1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    const-string v0, "input_method"

    .line 735
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 736
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object v0, v0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mActivity:Lcom/sonyericsson/music/metadata/EditMusicInfoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 741
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object v0, p1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    if-eqz v0, :cond_4

    .line 744
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->mImageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    sget-object v3, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ALBUM:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 745
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->isAlbumImageModifiable()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object p1, p1, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->mEditMusicInfo:Lcom/sonyericsson/music/metadata/EditMusicInfo;

    .line 746
    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->hasRemovableAlbumArt()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    .line 747
    :cond_2
    sget-object p1, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;->ARTIST:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    if-ne v2, p1, :cond_3

    .line 748
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/EditMusicInfo;->getArtistArt()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    .line 751
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;->access$000(Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 752
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->this$0:Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment;

    iget-object v2, p0, Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ImageClickListener;->mImageType:Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    invoke-static {v0, v1, p1, v2}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    :cond_4
    return-void
.end method
