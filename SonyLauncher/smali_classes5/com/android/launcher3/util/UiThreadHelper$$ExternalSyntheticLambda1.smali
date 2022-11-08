.class public final synthetic Lcom/android/launcher3/util/UiThreadHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/util/UiThreadHelper;->lambda$static$0(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p1

    return-object p1
.end method
