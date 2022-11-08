.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
.super Ljava/lang/Object;
.source "SystemShortcut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitAccessibilityInfo"
.end annotation


# instance fields
.field public final containsMultipleTasks:Z

.field public final nodeId:I

.field public final taskTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(ZLjava/lang/CharSequence;I)V
    .locals 0
    .param p1, "containsMultipleTasks"    # Z
    .param p2, "taskTitle"    # Ljava/lang/CharSequence;
    .param p3, "nodeId"    # I

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-boolean p1, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->containsMultipleTasks:Z

    .line 206
    iput-object p2, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->taskTitle:Ljava/lang/CharSequence;

    .line 207
    iput p3, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->nodeId:I

    .line 208
    return-void
.end method
