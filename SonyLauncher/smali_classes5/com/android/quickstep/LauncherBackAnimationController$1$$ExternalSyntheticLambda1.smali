.class public final synthetic Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/LauncherBackAnimationController$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/LauncherBackAnimationController$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/LauncherBackAnimationController$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/LauncherBackAnimationController$1;

    invoke-virtual {v0}, Lcom/android/quickstep/LauncherBackAnimationController$1;->lambda$onBackInvoked$1$com-android-quickstep-LauncherBackAnimationController$1()V

    return-void
.end method
