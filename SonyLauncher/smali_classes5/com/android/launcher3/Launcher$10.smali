.class Lcom/android/launcher3/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lcom/sonymobile/launcher/badge/SonyBadgeManager$BadgeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .line 3351
    iput-object p1, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateIconBadges(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sonymobile/launcher/badge/SonyBadgeInfo;",
            ">;)V"
        }
    .end annotation

    .line 3354
    .local p1, "updateBadges":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/launcher/badge/SonyBadgeInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Launcher$10;->this$0:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->-$$Nest$fgetmSonyBadgeDataProvider(Lcom/android/launcher3/Launcher;)Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/launcher/badge/SonyBadgeDataProvider;->addOrRemoveUpdatedSonyBadges(Ljava/util/Set;)V

    .line 3355
    return-void
.end method
