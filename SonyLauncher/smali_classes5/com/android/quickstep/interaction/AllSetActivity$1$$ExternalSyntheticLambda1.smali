.class public final synthetic Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Vibrator;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Vibrator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/interaction/AllSetActivity$1$$ExternalSyntheticLambda1;->f$0:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method
