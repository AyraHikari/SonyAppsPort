.class public Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PlaylistNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$ContentType;
    }
.end annotation


# static fields
.field private static final ARG_ADDITIONAL_MESSAGE:Ljava/lang/String; = "message"

.field private static final ARG_ITEMS_TO_ADD:Ljava/lang/String; = "itemsToAdd"

.field private static final ARG_PLAYLISTNAME:Ljava/lang/String; = "playlistName"

.field private static final NO_ICON:I = 0x0

.field public static final TAG_INPUT_DIALOG:Ljava/lang/String; = "input_dialog"


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mEmptyPlaylistMode:Z

.field private mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

.field private mProposedName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEmptyPlaylistMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;)Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mPlaylistAsyncTask:Lcom/sonyericsson/music/playlist/PlaylistAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEmptyPlaylistMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->openPlaylistOpFragment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->toggleSoftInput(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)Landroid/widget/EditText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method public static newLocalInstance(Ljava/lang/String;Ljava/util/ArrayList;)Landroidx/fragment/app/DialogFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/fragment/app/DialogFragment;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->newLocalInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    return-object p0
.end method

.method public static newLocalInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/fragment/app/DialogFragment;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;

    invoke-direct {v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;-><init>()V

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    add-int/lit8 v4, v2, 0x1

    .line 102
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 106
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playlistName"

    .line 107
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "itemsToAdd"

    .line 108
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "message"

    .line 109
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static newUnknownInstance(Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-static {p0, v0, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->newLocalInstance(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/fragment/app/DialogFragment;

    move-result-object p0

    return-object p0
.end method

.method private openPlaylistOpFragment(Ljava/lang/String;)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 276
    invoke-static {v2, p1, v1}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/library/PlaylistOperationFragment;

    move-result-object p1

    .line 278
    invoke-static {v2}, Lcom/sonyericsson/music/library/PlaylistOperationFragment;->getTag(I)Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v2

    .line 281
    invoke-virtual {v2, v0, p1, v1}, Lcom/sonyericsson/music/MusicFragmentManager;->placeContent(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private setInput(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 206
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method

.method private setInputView(Landroid/content/Context;)V
    .locals 2

    .line 210
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0049

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0900ea

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mProposedName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setInput(Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setTextWatcher()V

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private setNegativeButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$4;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$4;-><init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    const/4 p2, -0x2

    invoke-virtual {v0, p2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;

    invoke-direct {v1, p0, p2}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$3;-><init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2, p1, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setTextWatcher()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$2;-><init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private toggleSoftInput(I)V
    .locals 2

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 196
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playlistName"

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mProposedName:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mProposedName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mProposedName:Ljava/lang/String;

    :cond_0
    const-string v0, "itemsToAdd"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEmptyPlaylistMode:Z

    .line 126
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1001cb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setInputView(Landroid/content/Context;)V

    .line 133
    new-instance v0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog$1;-><init>(Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000c2

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setPositiveButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1000bc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->setNegativeButton(Ljava/lang/String;Lcom/sonyericsson/music/common/InputDialogClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onPause()V
    .locals 3

    .line 183
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 177
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x2

    .line 178
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/dialogs/PlaylistNameDialog;->toggleSoftInput(I)V

    return-void
.end method
