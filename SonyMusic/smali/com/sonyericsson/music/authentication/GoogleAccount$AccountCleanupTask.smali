.class Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;
.super Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
.source "GoogleAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/authentication/GoogleAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountCleanupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final mAppContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method private accountExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    .line 147
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getAccountId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    xor-int/2addr v0, p1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :catch_1
    :goto_0
    return v0
.end method

.method private static getAllAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "service_id=?"

    const/4 v1, 0x1

    .line 123
    new-array v4, v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v4, v2

    .line 124
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 128
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    .line 129
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 131
    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    throw p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p0
.end method


# virtual methods
.method protected varargs doTaskInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .line 72
    sget-object p1, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    monitor-enter p1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->get(Landroid/content/Context;)Lcom/sonyericsson/music/authentication/GoogleProfile;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/sonyericsson/music/authentication/GoogleProfile;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->getAllAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_5

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v2, :cond_1

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    iget-object v4, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v4, v2}, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->accountExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_3

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/sonyericsson/music/metadata/cloud/GoogleDriveUtils;->deleteAccount(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    or-int/2addr v3, v4

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->accountExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/authentication/GoogleSignIn;->deleteProfileAndIntroShown(Landroid/content/Context;)V

    .line 107
    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 107
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    return-void
.end method

.method protected bridge synthetic doTaskInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;->doTaskInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
