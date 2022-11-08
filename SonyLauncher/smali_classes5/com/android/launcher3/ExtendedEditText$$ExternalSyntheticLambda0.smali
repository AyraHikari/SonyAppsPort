.class public final synthetic Lcom/android/launcher3/ExtendedEditText$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/ExtendedEditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/ExtendedEditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/ExtendedEditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->lambda$onLayout$0$com-android-launcher3-ExtendedEditText()V

    return-void
.end method
