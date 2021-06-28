.class public Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "RenamePlaylistDialog.java"


# static fields
.field private static final ARG_PLAYLISTNAME:Ljava/lang/String; = "playlistName"

.field private static final ARG_PLAYLIST_URI:Ljava/lang/String; = "playlistUri"

.field private static final NO_ICON:I = 0x0

.field public static final TAG_INPUT_DIALOG:Ljava/lang/String; = "rename_dialog"


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

.field private mPlaylistName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->toggleSoftInput(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/net/Uri;)Landroidx/fragment/app/DialogFragment;
    .locals 3

    .line 58
    new-instance v0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;-><init>()V

    .line 60
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlistName"

    .line 61
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "playlistUri"

    .line 62
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setInput(Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 140
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method private setInputView(Landroid/content/Context;)V
    .locals 2

    .line 144
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900ea

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setInput(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setNegativeButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$3;-><init>(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    const/4 p2, -0x2

    invoke-virtual {v0, p2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private toggleSoftInput(I)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playlistName"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistName:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mPlaylistName:Ljava/lang/String;

    .line 76
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1001ca

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setInputView(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000bc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->setNegativeButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 117
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 119
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x2

    .line 112
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/RenamePlaylistDialog;->toggleSoftInput(I)V

    return-void
.end method
