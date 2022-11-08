.class Lcom/android/launcher3/logging/StatsLogManager$1;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/logging/StatsLogManager;->createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/logging/StatsLogManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/logging/StatsLogManager;

    .line 827
    iput-object p1, p0, Lcom/android/launcher3/logging/StatsLogManager$1;->this$0:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
