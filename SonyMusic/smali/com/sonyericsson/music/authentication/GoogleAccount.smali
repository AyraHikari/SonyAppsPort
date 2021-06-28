.class public Lcom/sonyericsson/music/authentication/GoogleAccount;
.super Ljava/lang/Object;
.source "GoogleAccount.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;
    }
.end annotation


# static fields
.field static final GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

.field private static final TYPE:Ljava/lang/String; = "com.google"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/authentication/GoogleAccount;->GOOGLE_ACCOUNT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accountCleanup(Landroid/app/Activity;Ljava/lang/String;)Lcom/sonyericsson/music/common/ListenerBasedRetainedAsyncTask;
    .locals 1

    .line 54
    new-instance v0, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/music/authentication/GoogleAccount$AccountCleanupTask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 55
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2

    .line 47
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
