.class public Lcom/sonyericsson/music/library/SortOrderDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SortOrderDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;
    }
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "key_index"

.field private static final TAG:Ljava/lang/String; = "sort_order_dlg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/library/SortOrderDialog;)Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonyericsson/music/library/SortOrderDialog;->getListener()Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;

    move-result-object p0

    return-object p0
.end method

.method private getListener()Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;
    .locals 1

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 101
    check-cast v0, Lcom/sonyericsson/music/library/SortOrderDialog$OnSortOrderSelected;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static newInstance(I)Lcom/sonyericsson/music/library/SortOrderDialog;
    .locals 3

    .line 37
    new-instance v0, Lcom/sonyericsson/music/library/SortOrderDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/SortOrderDialog;-><init>()V

    .line 39
    invoke-static {}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->values()[Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 40
    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 41
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v2

    if-lt p0, v2, :cond_0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    .line 42
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v1

    if-gt p0, v1, :cond_0

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_index"

    .line 47
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;I)V
    .locals 1

    .line 54
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p2}, Lcom/sonyericsson/music/library/SortOrderDialog;->newInstance(I)Lcom/sonyericsson/music/library/SortOrderDialog;

    move-result-object p2

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    const-string p1, "sort_order_dlg"

    .line 57
    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const/4 p1, 0x2

    .line 66
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 67
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->ALPHABETICAL:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 68
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 69
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->RECENT:Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;

    .line 70
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;->getTextResId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 72
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1002a0

    .line 73
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_index"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    new-instance v2, Lcom/sonyericsson/music/library/SortOrderDialog$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/music/library/SortOrderDialog$1;-><init>(Lcom/sonyericsson/music/library/SortOrderDialog;)V

    invoke-virtual {v0, p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
