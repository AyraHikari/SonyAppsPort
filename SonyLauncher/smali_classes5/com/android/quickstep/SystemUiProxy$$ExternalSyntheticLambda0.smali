.class public final synthetic Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/SystemUiProxy;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->lambda$new$1$com-android-quickstep-SystemUiProxy()V

    return-void
.end method
