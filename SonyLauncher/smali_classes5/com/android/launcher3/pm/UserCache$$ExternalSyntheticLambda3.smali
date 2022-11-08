.class public final synthetic Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/pm/UserCache;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pm/UserCache;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/pm/UserCache;

    iput-object p2, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache$$ExternalSyntheticLambda3;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/pm/UserCache;->lambda$addUserChangeListener$0$com-android-launcher3-pm-UserCache(Ljava/lang/Runnable;)V

    return-void
.end method
