.class final Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;
.super Landroid/os/AsyncTask;
.source "GoogleDriveFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/GoogleDriveFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AuthorizeUserTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:I

.field private final mAccountName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonyericsson/music/library/GoogleDriveFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/library/GoogleDriveFragment;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->this$0:Lcom/sonyericsson/music/library/GoogleDriveFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountName:Ljava/lang/String;

    .line 162
    iput p3, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountId:I

    .line 163
    iput-object p4, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSimulationIntent()Landroid/content/Intent;
    .locals 3

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music"

    const-string v2, "com.sonyericsson.music.picker.MusicPickerActivity"

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/audio"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private perform()Landroid/content/Intent;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleAccount;->get(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x2

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveToken;->get(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountId:I

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateState(Landroid/content/ContentResolver;II)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountId:I

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateState(Landroid/content/ContentResolver;II)V

    goto :goto_0

    .line 218
    :catch_1
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountId:I

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateState(Landroid/content/ContentResolver;II)V

    goto :goto_0

    .line 211
    :catch_2
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mAccountId:I

    invoke-static {v0, v2, v1}, Lcom/sonyericsson/music/metadata/cloud/db/AccountTable;->updateState(Landroid/content/ContentResolver;II)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_3
    move-exception v0

    .line 205
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private simulateGetTokenFailure(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 0

    .line 168
    iget-object p1, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 169
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->simulateGetTokenFailure(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->this$0:Lcom/sonyericsson/music/library/GoogleDriveFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->access$000(Lcom/sonyericsson/music/library/GoogleDriveFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->perform()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 173
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->getSimulationIntent()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->perform()Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->this$0:Lcom/sonyericsson/music/library/GoogleDriveFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment;->onAuthorizedDone(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 155
    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/library/GoogleDriveFragment$AuthorizeUserTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
