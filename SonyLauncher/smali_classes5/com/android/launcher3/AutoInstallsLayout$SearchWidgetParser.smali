.class public Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;
.super Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;
.source "AutoInstallsLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SearchWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher3/AutoInstallsLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/AutoInstallsLayout;

    .line 551
    iput-object p1, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    invoke-direct {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;)V

    return-void
.end method


# virtual methods
.method public getComponentName(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 560
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    iget-object v0, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v0, v0, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    const-string v1, "restored"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 563
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/launcher3/AutoInstallsLayout$SearchWidgetParser;->this$0:Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v2, v2, Lcom/android/launcher3/AutoInstallsLayout;->mValues:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/AutoInstallsLayout$PendingWidgetParser;->verifyAndInsert(Landroid/content/ComponentName;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method
