.class Lcom/android/quickstep/RecentTasksList$2;
.super Landroid/util/SparseBooleanArray;
.source "RecentTasksList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RecentTasksList;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RecentTasksList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RecentTasksList;

    .line 168
    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList$2;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Z
    .locals 1
    .param p1, "key"    # I

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList$2;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList$2;->this$0:Lcom/android/quickstep/RecentTasksList;

    invoke-static {v0}, Lcom/android/quickstep/RecentTasksList;->-$$Nest$fgetmKeyguardManager(Lcom/android/quickstep/RecentTasksList;)Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/KeyguardManagerCompat;->isDeviceLocked(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/RecentTasksList$2;->put(IZ)V

    .line 175
    :cond_0
    invoke-super {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method
