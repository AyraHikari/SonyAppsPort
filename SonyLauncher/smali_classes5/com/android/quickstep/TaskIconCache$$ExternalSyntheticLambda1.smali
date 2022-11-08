.class public final synthetic Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/os/UserHandle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache$$ExternalSyntheticLambda1;->f$1:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v0, v1, p1}, Lcom/android/quickstep/TaskIconCache;->lambda$invalidateCacheEntries$0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p1

    return p1
.end method
