.class public final synthetic Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/TaskIconCache;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/TaskIconCache;

    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$0:Lcom/android/quickstep/TaskIconCache;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda2;->f$2:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/TaskIconCache;->lambda$invalidateCacheEntries$1$com-android-quickstep-TaskIconCache(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
