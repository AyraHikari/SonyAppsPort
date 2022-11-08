.class public Lcom/sonyericsson/music/dialogs/ClearDataDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "ClearDataDialog.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;,
        Lcom/sonyericsson/music/dialogs/ClearDataDialog$DataClearAsyncTask;,
        Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/DialogFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOADER_ID_ALBUM:I = 0x0

.field private static final LOADER_ID_ARTIST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "cleardata_dialog"


# instance fields
.field private mAlbumCheckbox:Landroid/widget/CheckBox;

.field private mAlbumDataCount:Landroid/widget/TextView;

.field private mArtistCheckbox:Landroid/widget/CheckBox;

.field private mArtistDataCount:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mAlbumCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mArtistCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private getLoaderIds()[I
    .locals 1

    const/4 v0, 0x2

    .line 150
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public static newInstance()Lcom/sonyericsson/music/dialogs/ClearDataDialog;
    .locals 1

    .line 67
    new-instance v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->getLoaderIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    const/4 v5, 0x0

    .line 115
    invoke-virtual {v0, v4, v5, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/loader/content/Loader;->forceLoad()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 74
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0027

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f100061

    .line 78
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mAlbumCheckbox:Landroid/widget/CheckBox;

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mArtistCheckbox:Landroid/widget/CheckBox;

    .line 83
    new-instance v1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/ClearDataDialog;)V

    const v2, 0x7f1000bc

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    new-instance v1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/ClearDataDialog;Landroid/app/Activity;)V

    const p1, 0x7f1000c2

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f090052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mArtistDataCount:Landroid/widget/TextView;

    .line 106
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mRootView:Landroid/view/View;

    const v1, 0x7f090045

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mAlbumDataCount:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 122
    new-instance p2, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez p1, :cond_0

    .line 123
    sget-object p1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ALBUM:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;->ARTIST:Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    :goto_0
    invoke-direct {p2, v0, p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;)V

    return-object p2
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    check-cast p1, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;

    .line 129
    sget-object v0, Lcom/sonyericsson/music/dialogs/ClearDataDialog$3;->$SwitchMap$com$sonyericsson$music$dialogs$ClearDataDialog$Type:[I

    invoke-virtual {p1}, Lcom/sonyericsson/music/dialogs/ClearDataDialog$FolderDataTaskLoader;->getType()Lcom/sonyericsson/music/dialogs/ClearDataDialog$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 137
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mArtistDataCount:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/ClearDataDialog;->mAlbumDataCount:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 133
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
