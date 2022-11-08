.class Lcom/android/launcher3/pm/PinRequestHelper$1;
.super Ljava/lang/Object;
.source "PinRequestHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$acceptDelay:J

.field final synthetic val$request:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method constructor <init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$acceptDelay:J

    iput-object p3, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$acceptDelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/pm/PinRequestHelper$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    .line 77
    :cond_0
    return-void
.end method
