.class public Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;
.super Landroid/os/AsyncTask;
.source "ExtensionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/extension/ExtensionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnableExtensionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentName:Ljava/lang/String;

.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnable:Z

.field private final mShowExtensionHiddenToast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 1

    .line 304
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 305
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 306
    iput-object p2, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mComponentName:Ljava/lang/String;

    .line 307
    iput-boolean p3, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mEnable:Z

    .line 308
    iput-boolean p4, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mShowExtensionHiddenToast:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 294
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 313
    iget-object p1, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mComponentName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mEnable:Z

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setExtensionTileEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 318
    invoke-static {p1}, Lcom/sonyericsson/music/extension/ExtensionProvider;->getExtensionManagerContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    .line 317
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 326
    iget-object p1, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 327
    iget-boolean v0, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mEnable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;->mShowExtensionHiddenToast:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1001e1

    const/4 v1, 0x1

    .line 328
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/common/MusicToast;->show(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
