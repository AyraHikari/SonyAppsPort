.class public final synthetic Lcom/android/quickstep/util/InputConsumerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/shared/system/InputConsumerController$InputListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/InputConsumerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/InputConsumerProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/InputConsumerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/InputConsumerProxy;

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/InputConsumerProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/util/InputConsumerProxy;

    invoke-static {v0, p1}, Lcom/android/quickstep/util/InputConsumerProxy;->$r8$lambda$z5yelbUnQpmGODOBE0q6BAHU3z0(Lcom/android/quickstep/util/InputConsumerProxy;Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method
