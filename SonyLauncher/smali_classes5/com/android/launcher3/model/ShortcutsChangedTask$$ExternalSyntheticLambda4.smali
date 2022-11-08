.class public final synthetic Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ShortcutsChangedTask;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ShortcutsChangedTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/ShortcutsChangedTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/ShortcutsChangedTask$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/ShortcutsChangedTask;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/ShortcutsChangedTask;->lambda$execute$3$com-android-launcher3-model-ShortcutsChangedTask(Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    return-object p1
.end method
