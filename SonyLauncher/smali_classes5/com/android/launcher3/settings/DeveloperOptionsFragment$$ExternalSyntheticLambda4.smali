.class public final synthetic Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/settings/DeveloperOptionsFragment$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->lambda$loadPluginPrefs$2(Ljava/lang/String;Landroid/util/Pair;)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method
