.class Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;
.super Ljava/lang/Object;
.source "AutoInstallGooglePlayConfigParser.java"

# interfaces
.implements Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingWidgetParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;


# direct methods
.method private constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;-><init>(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)V

    return-void
.end method


# virtual methods
.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 10
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    const-string v0, "packageName"

    invoke-static {p1, v0}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "className"

    invoke-static {p1, v1}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "className":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v5, "name"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v5, "package-name"

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v5, "spanX"

    invoke-static {p1, v5}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "width"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v2, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v2}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v2

    const-string v5, "spanY"

    invoke-static {p1, v5}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "height"

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 557
    .local v2, "widgetDepth":I
    const/4 v5, 0x0

    .line 558
    .local v5, "isExtraUsed":Z
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v7, v6

    .local v7, "type":I
    const/4 v8, 0x3

    if-ne v6, v8, :cond_2

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_1

    goto :goto_1

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v3}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmParseListener(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v6}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v6

    const-string v8, "widgets"

    invoke-interface {v3, v8, v4, v6}, Lcom/sonymobile/launcher/customization/CustomizationParser$ParseListener;->handleSettingsGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    .line 591
    const-wide/16 v3, 0x0

    return-wide v3

    .line 559
    :cond_2
    :goto_1
    const/4 v6, 0x2

    if-eq v7, v6, :cond_3

    .line 560
    goto :goto_0

    .line 563
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "extra"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 564
    const-string v6, "key"

    invoke-static {p1, v6}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 565
    .local v6, "key":Ljava/lang/String;
    const-string v8, "value"

    invoke-static {p1, v8}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$smgetAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 566
    .local v8, "value":Ljava/lang/String;
    if-eqz v6, :cond_4

    if-eqz v8, :cond_4

    .line 567
    iget-object v9, p0, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser$PendingWidgetParser;->this$0:Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;

    invoke-static {v9}, Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;->-$$Nest$fgetmValues(Lcom/sonymobile/launcher/customization/AutoInstallGooglePlayConfigParser;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/4 v5, 0x1

    .line 575
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 573
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_4
    return-wide v3

    .line 579
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    return-wide v3

    .line 545
    .end local v2    # "widgetDepth":I
    .end local v5    # "isExtraUsed":Z
    .end local v7    # "type":I
    :cond_6
    :goto_2
    return-wide v3
.end method
