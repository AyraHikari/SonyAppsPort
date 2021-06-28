.class public Lcom/sonyericsson/music/infinite/PluginSelectionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PluginSelectionDialog.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/infinite/PluginSelectionDialog$DescriptionUpdatedReceiver;,
        Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;,
        Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/DialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/ArrayList<",
        "Lcom/sonyericsson/music/infinite/PluginInfo;",
        ">;>;",
        "Landroid/content/DialogInterface$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ANDROID_MARKET_SEARCH_PARAMETERS:Ljava/lang/String; = "Music Infinite Extension"

.field private static final ANDROID_MARKET_SEARCH_URI:Ljava/lang/String; = "market://search?"

.field private static final KEY_ALBUM:Ljava/lang/String; = "KEY_ALBUM"

.field private static final KEY_ARTIST:Ljava/lang/String; = "KEY_ARTIST"

.field private static final KEY_TITLE:Ljava/lang/String; = "KEY_TITLE"

.field private static final KEY_URI:Ljava/lang/String; = "KEY_URI"

.field private static final PLUGIN_LOADER_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "plugin_selection_dialog_tag"


# instance fields
.field private mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;)Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    return-object p0
.end method

.method private finishParentActivity()V
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/infinite/PluginSelectionDialog;
    .locals 3

    .line 64
    new-instance v0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;-><init>()V

    .line 66
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "KEY_URI"

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEY_ARTIST"

    .line 68
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEY_ALBUM"

    .line 69
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "KEY_TITLE"

    .line 70
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-static {p0}, Lcom/sonymobile/music/common/FragmentUtil;->isFragmentTransactionAllowed(Landroidx/fragment/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->newInstance(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    move-result-object p1

    const-string p2, "plugin_selection_dialog_tag"

    .line 80
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->finishParentActivity()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 132
    iget-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    invoke-virtual {p1}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_7

    .line 133
    iget-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->getItem(I)Lcom/sonyericsson/music/infinite/PluginInfo;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/sonyericsson/music/infinite/PluginInfo;->isSearchForMoreItem()Z

    move-result p1

    if-nez p1, :cond_5

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v2, "KEY_URI"

    .line 137
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p2

    :goto_0
    if-eqz p1, :cond_1

    const-string v2, "KEY_ARTIST"

    .line 138
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    if-eqz p1, :cond_2

    const-string v2, "KEY_ALBUM"

    .line 139
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p2

    :goto_2
    if-eqz p1, :cond_3

    const-string p2, "KEY_TITLE"

    .line 140
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_3
    move-object v5, p2

    :goto_3
    if-eqz v6, :cond_4

    .line 143
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/music/infinite/PluginInfo;->startActivity(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    if-nez v6, :cond_6

    .line 145
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class p2, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;

    const-string v0, "Not launching extension, since uri is null"

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_4

    .line 149
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "market://search?q=Music Infinite Extension"

    .line 150
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 157
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->finishParentActivity()V

    :cond_7
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 89
    new-instance v0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;-><init>(Lcom/sonyericsson/music/infinite/PluginSelectionDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    .line 91
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    .line 92
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x7f1100e4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;>;"
        }
    .end annotation

    .line 111
    new-instance p1, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$AsyncPluginFinder;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 170
    invoke-direct {p0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->finishParentActivity()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    invoke-static {p1, p2}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->access$000(Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/music/infinite/PluginInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/sonyericsson/music/infinite/PluginSelectionDialog;->mPluginListAdapter:Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;->access$000(Lcom/sonyericsson/music/infinite/PluginSelectionDialog$PluginListAdapter;Ljava/util/ArrayList;)V

    return-void
.end method
