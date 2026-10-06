.class Lcom/encima/marketsearch/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/encima/marketsearch/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/encima/marketsearch/MainActivity;

.field private final synthetic val$searchTerm:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/encima/marketsearch/MainActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/encima/marketsearch/MainActivity$1;->this$0:Lcom/encima/marketsearch/MainActivity;

    iput-object p2, p0, Lcom/encima/marketsearch/MainActivity$1;->val$searchTerm:Landroid/widget/EditText;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 26
    iget-object v2, p0, Lcom/encima/marketsearch/MainActivity$1;->val$searchTerm:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://market.android.com/search?q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/encima/marketsearch/MainActivity$1;->val$searchTerm:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    .local v1, "term":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/encima/marketsearch/MainActivity$1;->this$0:Lcom/encima/marketsearch/MainActivity;

    invoke-virtual {v2, v0}, Lcom/encima/marketsearch/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "term":Landroid/net/Uri;
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/encima/marketsearch/MainActivity$1;->this$0:Lcom/encima/marketsearch/MainActivity;

    invoke-virtual {v2}, Lcom/encima/marketsearch/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "Come on, I think we both know this is an empty box"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
