.class public Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;
.super Landroidx/fragment/app/DialogFragment;
.source "ImageUpdateContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;,
        Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;
    }
.end annotation


# static fields
.field private static final ART_ACTIONS:Ljava/lang/String; = "key_art_actions"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "key_image_type"

.field private static final TAG:Ljava/lang/String; = "image_update_context_menu"


# instance fields
.field private mContextAdapter:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->getListener()Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->mContextAdapter:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;

    return-object p0
.end method

.method private getListener()Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;
    .locals 1

    .line 112
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 118
    check-cast v0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$OnActionSelected;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;",
            ">;",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
            ")",
            "Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;"
        }
    .end annotation

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_art_actions"

    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "key_image_type"

    .line 58
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    new-instance p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoBaseFragment$ArtAction;",
            ">;",
            "Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p2, p3}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;

    move-result-object p2

    const/4 p3, 0x0

    .line 71
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    const-string p1, "image_update_context_menu"

    .line 72
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_art_actions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_image_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;

    .line 84
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v2, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0039

    const v5, 0x7f0901fa

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;-><init>(Landroid/content/Context;IILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->mContextAdapter:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;->mContextAdapter:Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$ContextListAdapter;

    new-instance v2, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu$1;-><init>(Lcom/sonyericsson/music/metadata/ImageUpdateContextMenu;Lcom/sonyericsson/music/metadata/EditMusicInfoUtils$ImageType;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
