.class public final synthetic Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/SystemUiProxy;

.field public final synthetic f$1:F

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;FZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/SystemUiProxy;

    iput p2, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$1:F

    iput-boolean p3, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$0:Lcom/android/quickstep/SystemUiProxy;

    iget v1, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$1:F

    iget-boolean v2, p0, Lcom/android/quickstep/SystemUiProxy$$ExternalSyntheticLambda3;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/SystemUiProxy;->lambda$setNavBarButtonAlpha$2$com-android-quickstep-SystemUiProxy(FZ)V

    return-void
.end method
