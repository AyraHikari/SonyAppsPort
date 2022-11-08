.class public final synthetic Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/FirstScreenBroadcast;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/FirstScreenBroadcast;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iput-object p2, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/FirstScreenBroadcast;

    iget-object v1, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/FirstScreenBroadcast$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/launcher3/model/FirstScreenBroadcast;->lambda$sendBroadcasts$1$com-android-launcher3-model-FirstScreenBroadcast(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
