.class public final synthetic Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/rotation/FloatingRotationButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    invoke-virtual {v0}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->lambda$updateTranslation$1$com-android-systemui-shared-rotation-FloatingRotationButton()V

    return-void
.end method
